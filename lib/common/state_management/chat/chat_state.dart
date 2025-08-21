part of 'chat_bloc.dart';

@freezed
abstract class ChatState with _$ChatState {
  const factory ChatState.initial() = Initial;
  const factory ChatState.loading() = Loading;
  const factory ChatState.loaded({required List<MessageModel> chatModels}) =
      Loaded;
  const factory ChatState.failure({required String message}) = Failure;
}
