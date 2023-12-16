// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenState {
  ViewState<List<ResultsModel>> get pokeMonVS =>
      throw _privateConstructorUsedError;

  List<ResultsModel> get pokeMonFavList => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)
        mainState,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)?
        mainState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)?
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
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call(
      {ViewState<List<ResultsModel>> pokeMonVS,
      List<ResultsModel> pokeMonFavList});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokeMonVS = null,
    Object? pokeMonFavList = null,
  }) {
    return _then(_value.copyWith(
      pokeMonVS: null == pokeMonVS
          ? _value.pokeMonVS
          : pokeMonVS // ignore: cast_nullable_to_non_nullable
              as ViewState<List<ResultsModel>>,
      pokeMonFavList: null == pokeMonFavList
          ? _value.pokeMonFavList
          : pokeMonFavList // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ViewState<List<ResultsModel>> pokeMonVS,
      List<ResultsModel> pokeMonFavList});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokeMonVS = null,
    Object? pokeMonFavList = null,
  }) {
    return _then(_$MainStateImpl(
      pokeMonVS: null == pokeMonVS
          ? _value.pokeMonVS
          : pokeMonVS // ignore: cast_nullable_to_non_nullable
              as ViewState<List<ResultsModel>>,
      pokeMonFavList: null == pokeMonFavList
          ? _value._pokeMonFavList
          : pokeMonFavList // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {required this.pokeMonVS,
      required final List<ResultsModel> pokeMonFavList})
      : _pokeMonFavList = pokeMonFavList;

  @override
  final ViewState<List<ResultsModel>> pokeMonVS;
  final List<ResultsModel> _pokeMonFavList;
  @override
  List<ResultsModel> get pokeMonFavList {
    if (_pokeMonFavList is EqualUnmodifiableListView) return _pokeMonFavList;
// ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pokeMonFavList);
  }

  @override
  String toString() {
    return 'HomeScreenState.mainState(pokeMonVS: $pokeMonVS, pokeMonFavList: $pokeMonFavList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.pokeMonVS, pokeMonVS) ||
                other.pokeMonVS == pokeMonVS) &&
            const DeepCollectionEquality()
                .equals(other._pokeMonFavList, _pokeMonFavList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pokeMonVS,
      const DeepCollectionEquality().hash(_pokeMonFavList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)
        mainState,
  }) {
    return mainState(pokeMonVS, pokeMonFavList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)?
        mainState,
  }) {
    return mainState?.call(pokeMonVS, pokeMonFavList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ViewState<List<ResultsModel>> pokeMonVS,
            List<ResultsModel> pokeMonFavList)?
        mainState,
    required TResult orElse(),
  }) {
    if (mainState != null) {
      return mainState(pokeMonVS, pokeMonFavList);
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

abstract class _MainState implements HomeScreenState {
  const factory _MainState(
      {required final ViewState<List<ResultsModel>> pokeMonVS,
      required final List<ResultsModel> pokeMonFavList}) = _$MainStateImpl;

  @override
  ViewState<List<ResultsModel>> get pokeMonVS;
  @override
  List<ResultsModel> get pokeMonFavList;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
