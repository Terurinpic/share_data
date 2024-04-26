// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_screen_global_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopScreenGlobalState {
  TopScreenType get topScreenType => throw _privateConstructorUsedError;
  EdgeInsets get safeAreaPadding => throw _privateConstructorUsedError;
  Size get screenSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopScreenGlobalStateCopyWith<TopScreenGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopScreenGlobalStateCopyWith<$Res> {
  factory $TopScreenGlobalStateCopyWith(TopScreenGlobalState value,
          $Res Function(TopScreenGlobalState) then) =
      _$TopScreenGlobalStateCopyWithImpl<$Res, TopScreenGlobalState>;
  @useResult
  $Res call(
      {TopScreenType topScreenType,
      EdgeInsets safeAreaPadding,
      Size screenSize});
}

/// @nodoc
class _$TopScreenGlobalStateCopyWithImpl<$Res,
        $Val extends TopScreenGlobalState>
    implements $TopScreenGlobalStateCopyWith<$Res> {
  _$TopScreenGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topScreenType = null,
    Object? safeAreaPadding = null,
    Object? screenSize = null,
  }) {
    return _then(_value.copyWith(
      topScreenType: null == topScreenType
          ? _value.topScreenType
          : topScreenType // ignore: cast_nullable_to_non_nullable
              as TopScreenType,
      safeAreaPadding: null == safeAreaPadding
          ? _value.safeAreaPadding
          : safeAreaPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopScreenGlobalStateImplCopyWith<$Res>
    implements $TopScreenGlobalStateCopyWith<$Res> {
  factory _$$TopScreenGlobalStateImplCopyWith(_$TopScreenGlobalStateImpl value,
          $Res Function(_$TopScreenGlobalStateImpl) then) =
      __$$TopScreenGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopScreenType topScreenType,
      EdgeInsets safeAreaPadding,
      Size screenSize});
}

/// @nodoc
class __$$TopScreenGlobalStateImplCopyWithImpl<$Res>
    extends _$TopScreenGlobalStateCopyWithImpl<$Res, _$TopScreenGlobalStateImpl>
    implements _$$TopScreenGlobalStateImplCopyWith<$Res> {
  __$$TopScreenGlobalStateImplCopyWithImpl(_$TopScreenGlobalStateImpl _value,
      $Res Function(_$TopScreenGlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topScreenType = null,
    Object? safeAreaPadding = null,
    Object? screenSize = null,
  }) {
    return _then(_$TopScreenGlobalStateImpl(
      topScreenType: null == topScreenType
          ? _value.topScreenType
          : topScreenType // ignore: cast_nullable_to_non_nullable
              as TopScreenType,
      safeAreaPadding: null == safeAreaPadding
          ? _value.safeAreaPadding
          : safeAreaPadding // ignore: cast_nullable_to_non_nullable
              as EdgeInsets,
      screenSize: null == screenSize
          ? _value.screenSize
          : screenSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$TopScreenGlobalStateImpl implements _TopScreenGlobalState {
  const _$TopScreenGlobalStateImpl(
      {this.topScreenType = TopScreenType.splash,
      this.safeAreaPadding = const EdgeInsets.all(0),
      this.screenSize = const Size(0, 0)});

  @override
  @JsonKey()
  final TopScreenType topScreenType;
  @override
  @JsonKey()
  final EdgeInsets safeAreaPadding;
  @override
  @JsonKey()
  final Size screenSize;

  @override
  String toString() {
    return 'TopScreenGlobalState(topScreenType: $topScreenType, safeAreaPadding: $safeAreaPadding, screenSize: $screenSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopScreenGlobalStateImpl &&
            (identical(other.topScreenType, topScreenType) ||
                other.topScreenType == topScreenType) &&
            (identical(other.safeAreaPadding, safeAreaPadding) ||
                other.safeAreaPadding == safeAreaPadding) &&
            (identical(other.screenSize, screenSize) ||
                other.screenSize == screenSize));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, topScreenType, safeAreaPadding, screenSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopScreenGlobalStateImplCopyWith<_$TopScreenGlobalStateImpl>
      get copyWith =>
          __$$TopScreenGlobalStateImplCopyWithImpl<_$TopScreenGlobalStateImpl>(
              this, _$identity);
}

abstract class _TopScreenGlobalState implements TopScreenGlobalState {
  const factory _TopScreenGlobalState(
      {final TopScreenType topScreenType,
      final EdgeInsets safeAreaPadding,
      final Size screenSize}) = _$TopScreenGlobalStateImpl;

  @override
  TopScreenType get topScreenType;
  @override
  EdgeInsets get safeAreaPadding;
  @override
  Size get screenSize;
  @override
  @JsonKey(ignore: true)
  _$$TopScreenGlobalStateImplCopyWith<_$TopScreenGlobalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
