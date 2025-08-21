part of 'chat_bloc.dart';

@freezed
sealed class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messageReceived({required MessageModel message}) =
      _MessageReceived;
  const factory ChatEvent.getMessages({required String chatId}) = _GetMessages;
}
