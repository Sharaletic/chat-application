part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = InitialChatState;
  const factory ChatState.loading() = LoadingChatState;
  const factory ChatState.loaded({required List<ChatModel> chats}) =
      LoadedChatState;
  const factory ChatState.error({required String message}) = ErrorChatState;
}
