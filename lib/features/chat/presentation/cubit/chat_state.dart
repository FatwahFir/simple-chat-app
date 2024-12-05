part of 'chat_cubit.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.initial() = _Initial;
  const factory ChatState.loading() = _Loading;
  const factory ChatState.userLoaded(List<LocalUser> users) = _UserLoaded;
  const factory ChatState.messageSended() = _MessageSended;
  const factory ChatState.messageLoaded(List<ChatMessage> messages) =
      _MessageLoaded;
  const factory ChatState.error(String message) = _Error;
}
