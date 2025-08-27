part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.createChat({
    required String recipientName,
    required String recipientId,
  }) = _CreateChatChatEvent;
  const factory ChatEvent.joinChat({required String chatId}) =
      _JoinChatChatEvent;
}
