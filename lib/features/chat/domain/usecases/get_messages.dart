import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/features/chat/domain/entities/chat_message.dart';
import 'package:chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:equatable/equatable.dart';

class GetMessages
    extends UsecaseWithParamsStream<List<ChatMessage>, GetMessagesParams> {
  GetMessages({required ChatRepository repository}) : _repository = repository;
  final ChatRepository _repository;
  @override
  Stream<List<ChatMessage>> call(GetMessagesParams params) =>
      _repository.getMessages(
        senderID: params.senderID,
        receiverID: params.receiverID,
      );
}

class GetMessagesParams extends Equatable {
  const GetMessagesParams({required this.senderID, required this.receiverID});
  final String senderID;
  final String receiverID;

  @override
  List<Object?> get props => [senderID, receiverID];
}
