import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/features/chat/domain/entities/local_user.dart';
import 'package:chat_app/features/chat/domain/repositories/chat_repository.dart';

class GetUserStream extends UsecaseWithoutParamsStream<List<LocalUser>> {
  GetUserStream({required ChatRepository repository})
      : _repository = repository;
  final ChatRepository _repository;

  @override
  Stream<List<LocalUser>> call() => _repository.getUserStream();
}
