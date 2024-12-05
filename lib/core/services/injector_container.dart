import 'package:chat_app/features/Settings/presentation/cubit/theme_cubit.dart';
import 'package:chat_app/features/auth/data/datasources/auth_remote_data_src.dart';
import 'package:chat_app/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:chat_app/features/auth/domain/repositories/auth_repository.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_in.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_out.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_up.dart';
import 'package:chat_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:chat_app/features/chat/data/datasources/chat_datasource.dart';
import 'package:chat_app/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:chat_app/features/chat/domain/repositories/chat_repository.dart';
import 'package:chat_app/features/chat/domain/usecases/get_messages.dart';
import 'package:chat_app/features/chat/domain/usecases/get_user_stream.dart';
import 'package:chat_app/features/chat/domain/usecases/send_message.dart';
import 'package:chat_app/features/chat/presentation/cubit/chat_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final authClient = FirebaseAuth.instance;
  final cloudStoreClient = FirebaseFirestore.instance;

  sl
    //App logic (state management)
    ..registerFactory(
      () => AuthCubit(
        signIn: sl(),
        signUp: sl(),
        signOut: sl(),
      ),
    )
    ..registerFactory(
      () => ChatCubit(
        getUserStream: sl(),
        getMessages: sl(),
        sendMessage: sl(),
      ),
    )
    ..registerFactory(
      () => ThemeCubit(),
    )

    //Usecases
    ..registerLazySingleton(
      () => SignIn(
        repository: sl(),
      ),
    )
    ..registerLazySingleton(
      () => SignUp(
        repository: sl(),
      ),
    )
    ..registerLazySingleton(
      () => SignOut(
        repository: sl(),
      ),
    )
    ..registerLazySingleton(
      () => GetUserStream(
        repository: sl(),
      ),
    )
    ..registerLazySingleton(
      () => SendMessage(
        repository: sl(),
      ),
    )
    ..registerLazySingleton(
      () => GetMessages(
        repository: sl(),
      ),
    )

    //Repositories
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSrc: sl(),
      ),
    )
    ..registerLazySingleton<ChatRepository>(
      () => ChatRepositoryImpl(
        datasource: sl(),
      ),
    )

    //Datasources
    ..registerLazySingleton<AuthRemoteDataSrc>(
      () => AuthRemoteDataSrcImpl(
        authClient: sl(),
        cloudStoreClient: sl(),
      ),
    )
    ..registerLazySingleton<ChatDatasource>(
      () => ChatDatasourceImpl(
        storeClient: sl(),
        authClient: sl(),
      ),
    )

    //External Dependencies
    ..registerLazySingleton(() => authClient)
    ..registerLazySingleton(() => cloudStoreClient);
}
