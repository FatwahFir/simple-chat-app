import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:equatable/equatable.dart';

class SendMessage extends UsecaseWithParams<void, MessageParams> {
  SendMessage({required ChatRepository repository}) : _repository = repository;
  final ChatRepository _repository;
  @override
  ResultFuture<void> call(MessageParams params) => _repository.sendMessage(
      receiverID: params.receiverID, message: params.message);
}

class MessageParams extends Equatable {
  const MessageParams({required this.receiverID, required this.message});
  final String receiverID;
  final String message;

  @override
  List<Object?> get props => [receiverID];
}
