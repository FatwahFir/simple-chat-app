// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChatState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ChatState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$UserLoadedImplCopyWith<$Res> {
  factory _$$UserLoadedImplCopyWith(
          _$UserLoadedImpl value, $Res Function(_$UserLoadedImpl) then) =
      __$$UserLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LocalUser> users});
}

/// @nodoc
class __$$UserLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$UserLoadedImpl>
    implements _$$UserLoadedImplCopyWith<$Res> {
  __$$UserLoadedImplCopyWithImpl(
      _$UserLoadedImpl _value, $Res Function(_$UserLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$UserLoadedImpl(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<LocalUser>,
    ));
  }
}

/// @nodoc

class _$UserLoadedImpl implements _UserLoaded {
  const _$UserLoadedImpl(final List<LocalUser> users) : _users = users;

  final List<LocalUser> _users;
  @override
  List<LocalUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'ChatState.userLoaded(users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoadedImpl &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      __$$UserLoadedImplCopyWithImpl<_$UserLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return userLoaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return userLoaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoaded implements ChatState {
  const factory _UserLoaded(final List<LocalUser> users) = _$UserLoadedImpl;

  List<LocalUser> get users;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLoadedImplCopyWith<_$UserLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MessageSendedImplCopyWith<$Res> {
  factory _$$MessageSendedImplCopyWith(
          _$MessageSendedImpl value, $Res Function(_$MessageSendedImpl) then) =
      __$$MessageSendedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessageSendedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageSendedImpl>
    implements _$$MessageSendedImplCopyWith<$Res> {
  __$$MessageSendedImplCopyWithImpl(
      _$MessageSendedImpl _value, $Res Function(_$MessageSendedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MessageSendedImpl implements _MessageSended {
  const _$MessageSendedImpl();

  @override
  String toString() {
    return 'ChatState.messageSended()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessageSendedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return messageSended();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return messageSended?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return messageSended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return messageSended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (messageSended != null) {
      return messageSended(this);
    }
    return orElse();
  }
}

abstract class _MessageSended implements ChatState {
  const factory _MessageSended() = _$MessageSendedImpl;
}

/// @nodoc
abstract class _$$MessageLoadedImplCopyWith<$Res> {
  factory _$$MessageLoadedImplCopyWith(
          _$MessageLoadedImpl value, $Res Function(_$MessageLoadedImpl) then) =
      __$$MessageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChatMessage> messages});
}

/// @nodoc
class __$$MessageLoadedImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$MessageLoadedImpl>
    implements _$$MessageLoadedImplCopyWith<$Res> {
  __$$MessageLoadedImplCopyWithImpl(
      _$MessageLoadedImpl _value, $Res Function(_$MessageLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
  }) {
    return _then(_$MessageLoadedImpl(
      null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
    ));
  }
}

/// @nodoc

class _$MessageLoadedImpl implements _MessageLoaded {
  const _$MessageLoadedImpl(final List<ChatMessage> messages)
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'ChatState.messageLoaded(messages: $messages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageLoadedImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_messages));

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageLoadedImplCopyWith<_$MessageLoadedImpl> get copyWith =>
      __$$MessageLoadedImplCopyWithImpl<_$MessageLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return messageLoaded(messages);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return messageLoaded?.call(messages);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (messageLoaded != null) {
      return messageLoaded(messages);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return messageLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return messageLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (messageLoaded != null) {
      return messageLoaded(this);
    }
    return orElse();
  }
}

abstract class _MessageLoaded implements ChatState {
  const factory _MessageLoaded(final List<ChatMessage> messages) =
      _$MessageLoadedImpl;

  List<ChatMessage> get messages;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageLoadedImplCopyWith<_$MessageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<LocalUser> users) userLoaded,
    required TResult Function() messageSended,
    required TResult Function(List<ChatMessage> messages) messageLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<LocalUser> users)? userLoaded,
    TResult? Function()? messageSended,
    TResult? Function(List<ChatMessage> messages)? messageLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<LocalUser> users)? userLoaded,
    TResult Function()? messageSended,
    TResult Function(List<ChatMessage> messages)? messageLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_MessageSended value) messageSended,
    required TResult Function(_MessageLoaded value) messageLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_UserLoaded value)? userLoaded,
    TResult? Function(_MessageSended value)? messageSended,
    TResult? Function(_MessageLoaded value)? messageLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_MessageSended value)? messageSended,
    TResult Function(_MessageLoaded value)? messageLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ChatState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of ChatState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
