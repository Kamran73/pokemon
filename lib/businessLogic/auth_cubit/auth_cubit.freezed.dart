// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  ViewState<void> get loginVS => throw _privateConstructorUsedError;

  ViewState<void> get signupVS => throw _privateConstructorUsedError;

  ViewState<void> get signOutVs => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)
        mainState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)?
        mainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)?
        mainState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainState value) mainState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainState value)? mainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainState value)? mainState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {ViewState<void> loginVS,
      ViewState<void> signupVS,
      ViewState<void> signOutVs});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginVS = null,
    Object? signupVS = null,
    Object? signOutVs = null,
  }) {
    return _then(_value.copyWith(
      loginVS: null == loginVS
          ? _value.loginVS
          : loginVS // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
      signupVS: null == signupVS
          ? _value.signupVS
          : signupVS // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
      signOutVs: null == signOutVs
          ? _value.signOutVs
          : signOutVs // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState<void> loginVS,
      ViewState<void> signupVS,
      ViewState<void> signOutVs});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginVS = null,
    Object? signupVS = null,
    Object? signOutVs = null,
  }) {
    return _then(_$MainStateImpl(
      loginVS: null == loginVS
          ? _value.loginVS
          : loginVS // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
      signupVS: null == signupVS
          ? _value.signupVS
          : signupVS // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
      signOutVs: null == signOutVs
          ? _value.signOutVs
          : signOutVs // ignore: cast_nullable_to_non_nullable
              as ViewState<void>,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {required this.loginVS, required this.signupVS, required this.signOutVs});

  @override
  final ViewState<void> loginVS;
  @override
  final ViewState<void> signupVS;
  @override
  final ViewState<void> signOutVs;

  @override
  String toString() {
    return 'AuthState.mainState(loginVS: $loginVS, signupVS: $signupVS, signOutVs: $signOutVs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.loginVS, loginVS) || other.loginVS == loginVS) &&
            (identical(other.signupVS, signupVS) ||
                other.signupVS == signupVS) &&
            (identical(other.signOutVs, signOutVs) ||
                other.signOutVs == signOutVs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginVS, signupVS, signOutVs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)
        mainState,
  }) {
    return mainState(loginVS, signupVS, signOutVs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)?
        mainState,
  }) {
    return mainState?.call(loginVS, signupVS, signOutVs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState<void> loginVS, ViewState<void> signupVS,
            ViewState<void> signOutVs)?
        mainState,
    required TResult orElse(),
  }) {
    if (mainState != null) {
      return mainState(loginVS, signupVS, signOutVs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainState value) mainState,
  }) {
    return mainState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainState value)? mainState,
  }) {
    return mainState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainState value)? mainState,
    required TResult orElse(),
  }) {
    if (mainState != null) {
      return mainState(this);
    }
    return orElse();
  }
}

abstract class _MainState implements AuthState {
  const factory _MainState(
      {required final ViewState<void> loginVS,
      required final ViewState<void> signupVS,
      required final ViewState<void> signOutVs}) = _$MainStateImpl;

  @override
  ViewState<void> get loginVS;
  @override
  ViewState<void> get signupVS;
  @override
  ViewState<void> get signOutVs;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
