import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/auth/domain/repositories/auth_repository.dart';

class SignOut extends UsecaseWithoutParams<void> {
  SignOut({required AuthRepository repository}) : _repository = repository;
  final AuthRepository _repository;

  @override
  ResultFuture<void> call() => _repository.signOut();
}
