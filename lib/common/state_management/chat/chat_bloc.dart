import 'dart:async';
import 'dart:convert';
import 'package:chat_application/common/api/api_client/api_client.dart';
import 'package:chat_application/common/api/models/websocket_message.dart';
import 'package:chat_application/data/dtos/message_dto/message_dto.dart';
import 'package:chat_application/domain/models/message_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required ApiClient apiClient})
    : _apiClient = apiClient,
      super(const ChatState.initial()) {
    _streamSubscription = apiClient.channel.stream.listen((data) {
      final json = jsonDecode(data) as Map<String, dynamic>;
      final websocketMessage = WebsocketMessage.fromJson(json);

      switch (websocketMessage.type) {
        case 'recieve_message':
          final json = websocketMessage.payload as Map<String, dynamic>;
          final message = MessageDto.fromJson(json).toDomain();
          add(ChatEvent.messageReceived(message: message));
      }
    });

    on<ChatEvent>((event, emit) async {
      switch (event) {
        case _CreateChat():
          _onCreateChat(event, emit);
        case _JoinChat():
          _onJoinChat(event, emit);
        case _SendMessage():
          _onSendMessage(event, emit);
        case _MessageReceived():
          _onMessageReceived(event, emit);
        case _GetMessages():
          _onGetMessage(event, emit);
      }
    });
  }

  StreamSubscription? _streamSubscription;
  final ApiClient _apiClient;
  late String currentChat;

  Future<void> _onCreateChat(_CreateChat event, Emitter<ChatState> emit) async {
    try {
      final chatId = await _apiClient.createChat(
        recipientId: event.recipientId,
        recipientName: event.recipientName,
      );
      add(ChatEvent.joinChat(chatId: chatId));
      currentChat = chatId;
    } catch (e) {
      emit(Failure(message: e.toString()));
    }
  }

  void _onJoinChat(_JoinChat event, Emitter<ChatState> emit) {
    try {
      _apiClient.joinChat(chatId: event.chatId);
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onSendMessage(_SendMessage event, Emitter<ChatState> emit) {
    try {
      _apiClient.sendMessage(message: event.message, chatId: currentChat);
    } catch (e) {
      emit(Failure(message: e.toString()));
    }
  }

  void _onMessageReceived(_MessageReceived event, Emitter<ChatState> emit) {
    if (state is Loaded) {
      final messages = [...(state as Loaded).chatModels, event.message];
      emit(ChatState.loaded(chatModels: messages));
    } else {
      emit(ChatState.loaded(chatModels: [event.message]));
    }
  }

  Future<void> _onGetMessage(
    _GetMessages event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final messages = await _apiClient.getMessages(chatId: event.chatId);
      emit(ChatState.loaded(chatModels: messages));
    } catch (e) {
      emit(ChatState.failure(message: e.toString()));
    }
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
