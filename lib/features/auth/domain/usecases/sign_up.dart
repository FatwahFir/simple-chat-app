import 'package:chat_app/core/usecase/usecase.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:equatable/equatable.dart';

class SignUp extends UsecaseWithParams<void, SignUpParams> {
  SignUp({required AuthRepository repository}) : _repository = repository;
  final AuthRepository _repository;

  @override
  ResultFuture<void> call(SignUpParams params) => _repository.signUp(
        email: params.email,
        name: params.name,
        password: params.password,
      );
}

class SignUpParams extends Equatable {
  const SignUpParams(
      {required this.email, required this.name, required this.password});
  final String email;
  final String name;
  final String password;

  @override
  List<String> get props => [email, name];
}
