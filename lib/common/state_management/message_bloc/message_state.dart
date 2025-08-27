part of 'message_bloc.dart';

@freezed
class MessageState with _$MessageState {
  const factory MessageState.initial() = InitialMessageState;
  const factory MessageState.loading() = LoadingMessageState;
  const factory MessageState.loaded({required List<MessageModel> messages}) =
      LoadedMessageState;
  const factory MessageState.error({required String message}) =
      ErrorMessageState;
}
