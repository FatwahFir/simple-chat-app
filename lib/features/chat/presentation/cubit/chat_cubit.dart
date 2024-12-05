import 'package:bloc/bloc.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message.dart';
import 'package:chat_app/features/chat/domain/entities/local_user.dart';
import 'package:chat_app/features/chat/domain/usecases/get_messages.dart';
import 'package:chat_app/features/chat/domain/usecases/get_user_stream.dart';
import 'package:chat_app/features/chat/domain/usecases/send_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_state.dart';
part 'chat_cubit.freezed.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit({
    required GetUserStream getUserStream,
    required GetMessages getMessages,
    required SendMessage sendMessage,
  })  : _getUserStream = getUserStream,
        _getMessages = getMessages,
        _sendMessage = sendMessage,
        super(const ChatState.initial());

  final GetUserStream _getUserStream;
  final GetMessages _getMessages;
  final SendMessage _sendMessage;

  void startStreamUser() {
    _getUserStream().listen(
      (users) {
        emit(ChatState.userLoaded(users));
      },
      onError: (error) {
        emit(ChatState.error("Failed to load messages: $error"));
      },
    );
  }

  void startStreamMessages(
      {required String senderID, required String receiverID}) {
    _getMessages(GetMessagesParams(senderID: senderID, receiverID: receiverID))
        .listen(
      (messages) {
        emit(ChatState.messageLoaded(messages));
      },
      onError: (error) {
        emit(ChatState.error("Failed to load messages: $error"));
      },
    );
  }

  Future<void> sendMessage({
    required String receiverID,
    required String message,
  }) async {
    final res = await _sendMessage(
      MessageParams(
        receiverID: receiverID,
        message: message,
      ),
    );

    res.fold(
      (l) => emit(ChatState.error(l.message)),
      (_) => emit(const ChatState.messageSended()),
    );
  }
}
