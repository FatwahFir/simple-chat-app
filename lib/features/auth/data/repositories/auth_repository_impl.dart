import 'package:chat_app/core/errors/exceptions.dart';
import 'package:chat_app/core/errors/failure.dart';
import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/auth/data/datasources/auth_remote_data_src.dart';
import 'package:chat_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required AuthRemoteDataSrc remoteDataSrc})
      : _remoteDataSrc = remoteDataSrc;
  final AuthRemoteDataSrc _remoteDataSrc;

  @override
  ResultFuture<void> signIn({
    required String email,
    required String password,
  }) async {
    try {
      await _remoteDataSrc.signIn(
        email: email,
        password: password,
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
  ResultVoid signOut() async {
    try {
      await _remoteDataSrc.signOut();
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
  ResultVoid signUp({
    required String email,
    required String name,
    required String password,
  }) async {
    try {
      await _remoteDataSrc.signUp(
        email: email,
        name: name,
        password: password,
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
}
