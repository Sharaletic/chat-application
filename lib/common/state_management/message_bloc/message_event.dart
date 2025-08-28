part of 'message_bloc.dart';

@freezed
class MessageEvent with _$MessageEvent {
  const factory MessageEvent.messageReceived({required MessageModel message}) =
      _MessageReceivedMessageEvent;
  const factory MessageEvent.sendMessage({
    required String message,
    required String chatId,
  }) = _SendMessageMessageEvent;
  const factory MessageEvent.getMessages({required String chatId}) =
      _GetMessagesMessageEvent;
}
