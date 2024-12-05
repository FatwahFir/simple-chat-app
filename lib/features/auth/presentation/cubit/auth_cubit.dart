import 'package:bloc/bloc.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_in.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_out.dart';
import 'package:chat_app/features/auth/domain/usecases/sign_up.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(
      {required SignIn signIn,
      required SignUp signUp,
      required SignOut signOut})
      : _signIn = signIn,
        _signUp = signUp,
        _signOut = signOut,
        super(const AuthState.initial()) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user != null) {
        emit(const AuthState.signedIn());
      }
    });
  }

  final SignIn _signIn;
  final SignUp _signUp;
  final SignOut _signOut;

  Future<void> signIn(String email, String password) async {
    emit(const AuthState.loading());

    final res = await _signIn(
      SignInParams(
        email: email,
        password: password,
      ),
    );

    res.fold(
      (l) => emit(AuthState.error(l.message)),
      (_) => emit(const AuthState.signedIn()),
    );
  }

  Future<void> signUp(String email, String name, String password) async {
    emit(const AuthState.loading());

    final res = await _signUp(
      SignUpParams(
        email: email,
        name: name,
        password: password,
      ),
    );

    res.fold(
      (l) => emit(AuthState.error(l.message)),
      (_) => emit(const AuthState.signedUp()),
    );
  }

  Future<void> signOut() async {
    emit(const AuthState.loading());

    final res = await _signOut();

    res.fold(
      (l) => emit(AuthState.error(l.message)),
      (_) => emit(const AuthState.signedOut()),
    );
  }
}
