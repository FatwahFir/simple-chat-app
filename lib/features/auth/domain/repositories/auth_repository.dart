import 'package:chat_app/core/utils/typedef.dart';

abstract class AuthRepository {
  ResultVoid signIn({
    required String email,
    required String password,
  });

  ResultVoid signOut();

  ResultVoid signUp({
    required String email,
    required String name,
    required String password,
  });
}
