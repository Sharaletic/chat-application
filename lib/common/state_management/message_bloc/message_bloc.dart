import 'dart:async';
import 'dart:convert';
import 'package:chat_application/common/api/api_client/api_client.dart';
import 'package:chat_application/common/api/models/websocket_message.dart';
import 'package:chat_application/data/dtos/message_dto/message_dto.dart';
import 'package:chat_application/domain/models/message_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'message_event.dart';
part 'message_state.dart';
part 'message_bloc.freezed.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  MessageBloc({required ApiClient apiClient})
    : _apiClient = apiClient,
      super(MessageState.initial()) {
    _streamSubscription = apiClient.channel.stream.listen((data) {
      final json = jsonDecode(data) as Map<String, dynamic>;
      final websocketMessage = WebsocketMessage.fromJson(json);

      switch (websocketMessage.type) {
        case 'recieve_message':
          final json = websocketMessage.payload as Map<String, dynamic>;
          final message = MessageDto.fromJson(json).toDomain();
          add(MessageEvent.messageReceived(message: message));
      }
    });

    on<MessageEvent>((event, emit) async {
      switch (event) {
        case _SendMessageMessageEvent():
          _onSendMessage(event, emit);
        case _MessageReceivedMessageEvent():
          _onMessageReceived(event, emit);
        case _GetMessagesMessageEvent():
          _onGetMessage(event, emit);
      }
    });
  }

  StreamSubscription? _streamSubscription;
  final ApiClient _apiClient;
  late String currentChat;

  void _onSendMessage(
    _SendMessageMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    try {
      _apiClient.sendMessage(message: event.message, chatId: currentChat);
    } catch (e) {
      emit(ErrorMessageState(message: e.toString()));
    }
  }

  void _onMessageReceived(
    _MessageReceivedMessageEvent event,
    Emitter<MessageState> emit,
  ) {
    if (state is LoadedMessageState) {
      final messages = [
        ...(state as LoadedMessageState).messages,
        event.message,
      ];
      emit(MessageState.loaded(messages: messages));
    } else {
      emit(MessageState.loaded(messages: [event.message]));
    }
  }

  Future<void> _onGetMessage(
    _GetMessagesMessageEvent event,
    Emitter<MessageState> emit,
  ) async {
    try {
      final messages = await _apiClient.getMessages(chatId: event.chatId);
      emit(MessageState.loaded(messages: messages));
    } catch (e) {
      emit(MessageState.error(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
