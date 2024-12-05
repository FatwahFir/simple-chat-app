import 'package:chat_app/core/utils/typedef.dart';
import 'package:chat_app/features/chat/domain/entities/local_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'local_user_model.g.dart';

@JsonSerializable()
class LocalUserModel extends LocalUser {
  const LocalUserModel(
      {required super.uid, required super.email, required super.name});

  factory LocalUserModel.fromJson(DataMap json) =>
      _$LocalUserModelFromJson(json);

  DataMap toJson() => _$LocalUserModelToJson(this);
}
