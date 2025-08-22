part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.createChat({
    required String recipientName,
    required String recipientId,
  }) = _CreateChat;
  const factory ChatEvent.joinChat({required String chatId}) = _JoinChat;
  const factory ChatEvent.messageReceived({required MessageModel message}) =
      _MessageReceived;
  const factory ChatEvent.sendMessage({required String message}) = _SendMessage;
  const factory ChatEvent.getMessages({required String chatId}) = _GetMessages;
}
