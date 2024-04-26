// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthenticationState {
  bool get isShowEmailAuthentication => throw _privateConstructorUsedError;
  bool get isLogin => throw _privateConstructorUsedError;
  String get inputtedEmail => throw _privateConstructorUsedError;
  String get inputtedPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call(
      {bool isShowEmailAuthentication,
      bool isLogin,
      String inputtedEmail,
      String inputtedPassword});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowEmailAuthentication = null,
    Object? isLogin = null,
    Object? inputtedEmail = null,
    Object? inputtedPassword = null,
  }) {
    return _then(_value.copyWith(
      isShowEmailAuthentication: null == isShowEmailAuthentication
          ? _value.isShowEmailAuthentication
          : isShowEmailAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      inputtedEmail: null == inputtedEmail
          ? _value.inputtedEmail
          : inputtedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputtedPassword: null == inputtedPassword
          ? _value.inputtedPassword
          : inputtedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationStateImplCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$AuthenticationStateImplCopyWith(_$AuthenticationStateImpl value,
          $Res Function(_$AuthenticationStateImpl) then) =
      __$$AuthenticationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isShowEmailAuthentication,
      bool isLogin,
      String inputtedEmail,
      String inputtedPassword});
}

/// @nodoc
class __$$AuthenticationStateImplCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$AuthenticationStateImpl>
    implements _$$AuthenticationStateImplCopyWith<$Res> {
  __$$AuthenticationStateImplCopyWithImpl(_$AuthenticationStateImpl _value,
      $Res Function(_$AuthenticationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isShowEmailAuthentication = null,
    Object? isLogin = null,
    Object? inputtedEmail = null,
    Object? inputtedPassword = null,
  }) {
    return _then(_$AuthenticationStateImpl(
      isShowEmailAuthentication: null == isShowEmailAuthentication
          ? _value.isShowEmailAuthentication
          : isShowEmailAuthentication // ignore: cast_nullable_to_non_nullable
              as bool,
      isLogin: null == isLogin
          ? _value.isLogin
          : isLogin // ignore: cast_nullable_to_non_nullable
              as bool,
      inputtedEmail: null == inputtedEmail
          ? _value.inputtedEmail
          : inputtedEmail // ignore: cast_nullable_to_non_nullable
              as String,
      inputtedPassword: null == inputtedPassword
          ? _value.inputtedPassword
          : inputtedPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationStateImpl implements _AuthenticationState {
  const _$AuthenticationStateImpl(
      {this.isShowEmailAuthentication = false,
      this.isLogin = false,
      this.inputtedEmail = '',
      this.inputtedPassword = ''});

  @override
  @JsonKey()
  final bool isShowEmailAuthentication;
  @override
  @JsonKey()
  final bool isLogin;
  @override
  @JsonKey()
  final String inputtedEmail;
  @override
  @JsonKey()
  final String inputtedPassword;

  @override
  String toString() {
    return 'AuthenticationState(isShowEmailAuthentication: $isShowEmailAuthentication, isLogin: $isLogin, inputtedEmail: $inputtedEmail, inputtedPassword: $inputtedPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationStateImpl &&
            (identical(other.isShowEmailAuthentication,
                    isShowEmailAuthentication) ||
                other.isShowEmailAuthentication == isShowEmailAuthentication) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.inputtedEmail, inputtedEmail) ||
                other.inputtedEmail == inputtedEmail) &&
            (identical(other.inputtedPassword, inputtedPassword) ||
                other.inputtedPassword == inputtedPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isShowEmailAuthentication,
      isLogin, inputtedEmail, inputtedPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      __$$AuthenticationStateImplCopyWithImpl<_$AuthenticationStateImpl>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {final bool isShowEmailAuthentication,
      final bool isLogin,
      final String inputtedEmail,
      final String inputtedPassword}) = _$AuthenticationStateImpl;

  @override
  bool get isShowEmailAuthentication;
  @override
  bool get isLogin;
  @override
  String get inputtedEmail;
  @override
  String get inputtedPassword;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationStateImplCopyWith<_$AuthenticationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
