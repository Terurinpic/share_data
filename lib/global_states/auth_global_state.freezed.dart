// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthGlobalState {
  AuthModel get authModel => throw _privateConstructorUsedError;
  UserModel? get userModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthGlobalStateCopyWith<AuthGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthGlobalStateCopyWith<$Res> {
  factory $AuthGlobalStateCopyWith(
          AuthGlobalState value, $Res Function(AuthGlobalState) then) =
      _$AuthGlobalStateCopyWithImpl<$Res, AuthGlobalState>;
  @useResult
  $Res call({AuthModel authModel, UserModel? userModel});

  $AuthModelCopyWith<$Res> get authModel;
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class _$AuthGlobalStateCopyWithImpl<$Res, $Val extends AuthGlobalState>
    implements $AuthGlobalStateCopyWith<$Res> {
  _$AuthGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
    Object? userModel = freezed,
  }) {
    return _then(_value.copyWith(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthModelCopyWith<$Res> get authModel {
    return $AuthModelCopyWith<$Res>(_value.authModel, (value) {
      return _then(_value.copyWith(authModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get userModel {
    if (_value.userModel == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.userModel!, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthGlobalStateImplCopyWith<$Res>
    implements $AuthGlobalStateCopyWith<$Res> {
  factory _$$AuthGlobalStateImplCopyWith(_$AuthGlobalStateImpl value,
          $Res Function(_$AuthGlobalStateImpl) then) =
      __$$AuthGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthModel authModel, UserModel? userModel});

  @override
  $AuthModelCopyWith<$Res> get authModel;
  @override
  $UserModelCopyWith<$Res>? get userModel;
}

/// @nodoc
class __$$AuthGlobalStateImplCopyWithImpl<$Res>
    extends _$AuthGlobalStateCopyWithImpl<$Res, _$AuthGlobalStateImpl>
    implements _$$AuthGlobalStateImplCopyWith<$Res> {
  __$$AuthGlobalStateImplCopyWithImpl(
      _$AuthGlobalStateImpl _value, $Res Function(_$AuthGlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authModel = null,
    Object? userModel = freezed,
  }) {
    return _then(_$AuthGlobalStateImpl(
      authModel: null == authModel
          ? _value.authModel
          : authModel // ignore: cast_nullable_to_non_nullable
              as AuthModel,
      userModel: freezed == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel?,
    ));
  }
}

/// @nodoc

class _$AuthGlobalStateImpl implements _AuthGlobalState {
  const _$AuthGlobalStateImpl(
      {this.authModel = const AuthModel(), this.userModel = null});

  @override
  @JsonKey()
  final AuthModel authModel;
  @override
  @JsonKey()
  final UserModel? userModel;

  @override
  String toString() {
    return 'AuthGlobalState(authModel: $authModel, userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthGlobalStateImpl &&
            (identical(other.authModel, authModel) ||
                other.authModel == authModel) &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authModel, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthGlobalStateImplCopyWith<_$AuthGlobalStateImpl> get copyWith =>
      __$$AuthGlobalStateImplCopyWithImpl<_$AuthGlobalStateImpl>(
          this, _$identity);
}

abstract class _AuthGlobalState implements AuthGlobalState {
  const factory _AuthGlobalState(
      {final AuthModel authModel,
      final UserModel? userModel}) = _$AuthGlobalStateImpl;

  @override
  AuthModel get authModel;
  @override
  UserModel? get userModel;
  @override
  @JsonKey(ignore: true)
  _$$AuthGlobalStateImplCopyWith<_$AuthGlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
