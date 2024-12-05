import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message.dart';
import 'package:chat_app/features/chat/domain/entities/local_user.dart';

abstract class ChatRepository {
  Stream<List<LocalUser>> getUserStream();
  Stream<List<ChatMessage>> getMessages({
    required String senderID,
    required String receiverID,
  });
  ResultVoid sendMessage({
    required String receiverID,
    required String message,
  });
}
