import 'package:chat_app/core/utils/typedef.dart';

abstract class UsecaseWithParams<Type, Params> {
  const UsecaseWithParams();
  ResultFuture<Type> call(Params params);
}

abstract class UsecaseWithParamsStream<Type, Params> {
  const UsecaseWithParamsStream();
  Stream<Type> call(Params params);
}

abstract class UsecaseWithoutParams<Type> {
  const UsecaseWithoutParams();
  ResultFuture<Type> call();
}

abstract class UsecaseWithoutParamsStream<Type> {
  const UsecaseWithoutParamsStream();
  Stream<Type> call();
}
