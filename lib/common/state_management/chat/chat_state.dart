part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const ChatState._();

  const factory ChatState.initial() = InitialChatState;
  const factory ChatState.loading() = LoadingChatState;
  const factory ChatState.loaded({required List<ChatModel> chats}) =
      LoadedChatState;
  const factory ChatState.succesful({required String currentChatId}) =
      SuccessfulChatState;
  const factory ChatState.error({required String message}) = ErrorChatState;

  String? get currentChat =>
      mapOrNull<String?>(succesful: (state) => state.currentChatId);
}
