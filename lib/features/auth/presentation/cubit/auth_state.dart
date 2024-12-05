part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.signedIn() = _SignedIn;
  const factory AuthState.signedUp() = _SignedUp;
  const factory AuthState.signedOut() = _SignedOut;
  const factory AuthState.error(String message) = _Error;
}
