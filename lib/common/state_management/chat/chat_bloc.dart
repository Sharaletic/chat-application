import 'dart:async';
import 'package:chat_application/common/api/api_client/api_client.dart';
import 'package:chat_application/domain/models/chat_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  ChatBloc({required ApiClient apiClient})
    : _apiClient = apiClient,
      super(const ChatState.initial()) {
    on<ChatEvent>((event, emit) async {
      switch (event) {
        case _CreateChatChatEvent():
          _onCreateChat(event, emit);
        case _JoinChatChatEvent():
          _onJoinChat(event, emit);
        case _LoadChatChatEvent():
          await _onLoad(event, emit);
      }
    });
  }

  final ApiClient _apiClient;

  Future<void> _onCreateChat(
    _CreateChatChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      final chatId = await _apiClient.createChat(
        recipientId: event.recipientId,
      );
      add(ChatEvent.joinChat(chatId: chatId));
      emit(ChatState.succesful(currentChatId: chatId));
    } catch (e) {
      emit(ErrorChatState(message: e.toString()));
    }
  }

  void _onJoinChat(_JoinChatChatEvent event, Emitter<ChatState> emit) {
    try {
      _apiClient.joinChat(chatId: event.chatId);
    } catch (e) {
      emit(ChatState.error(message: e.toString()));
    }
  }

  Future<void> _onLoad(
    _LoadChatChatEvent event,
    Emitter<ChatState> emit,
  ) async {
    try {
      emit(ChatState.loading());
      final chats = await _apiClient.getChats();
      emit(ChatState.loaded(chats: chats));
    } catch (e) {
      emit(ChatState.error(message: e.toString()));
    }
  }
}
