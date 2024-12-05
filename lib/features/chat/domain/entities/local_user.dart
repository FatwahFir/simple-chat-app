import 'package:equatable/equatable.dart';

class LocalUser extends Equatable {
  final String uid;
  final String email;
  final String name;

  const LocalUser({
    required this.uid,
    required this.email,
    required this.name,
  });

  @override
  String toString() {
    return 'LocalUser(uid: $uid, email: $email, name: $name)';
  }

  @override
  List<Object?> get props => [uid, email];
}
