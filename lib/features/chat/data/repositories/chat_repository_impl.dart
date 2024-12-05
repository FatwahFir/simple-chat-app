import 'package:chat_app/core/errors/exceptions.dart';
import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/chat/data/datasources/chat_datasource.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message.dart';
import 'package:chat_app/features/chat/domain/entities/local_user.dart';
import 'package:chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';

class ChatRepositoryImpl extends ChatRepository {
  ChatRepositoryImpl({required ChatDatasource datasource})
      : _datasource = datasource;

  final ChatDatasource _datasource;
  @override
  Stream<List<LocalUser>> getUserStream() {
    return _datasource.getUserStream();
  }

  @override
  ResultVoid sendMessage({
    required String receiverID,
    required String message,
  }) async {
    try {
      await _datasource.sendMessage(
        receiverID: receiverID,
        message: message,
      );

      return const Right(null);
    } on ServerException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    }
  }

  @override
  Stream<List<ChatMessage>> getMessages(
      {required String senderID, required String receiverID}) {
    return _datasource.getMessages(senderID: senderID, receiverID: receiverID);
  }
}
