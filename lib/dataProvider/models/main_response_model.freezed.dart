// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MainResponse _$MainResponseFromJson(Map<String, dynamic> json) {
  return _MainResponse.fromJson(json);
}

/// @nodoc
mixin _$MainResponse {
  int get count => throw _privateConstructorUsedError;

  String get next => throw _privateConstructorUsedError;

  String? get previous => throw _privateConstructorUsedError;

  List<ResultsModel> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainResponseCopyWith<MainResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainResponseCopyWith<$Res> {
  factory $MainResponseCopyWith(
          MainResponse value, $Res Function(MainResponse) then) =
      _$MainResponseCopyWithImpl<$Res, MainResponse>;

  @useResult
  $Res call(
      {int count, String next, String? previous, List<ResultsModel> results});
}

/// @nodoc
class _$MainResponseCopyWithImpl<$Res, $Val extends MainResponse>
    implements $MainResponseCopyWith<$Res> {
  _$MainResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainResponseImplCopyWith<$Res>
    implements $MainResponseCopyWith<$Res> {
  factory _$$MainResponseImplCopyWith(
          _$MainResponseImpl value, $Res Function(_$MainResponseImpl) then) =
      __$$MainResponseImplCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call(
      {int count, String next, String? previous, List<ResultsModel> results});
}

/// @nodoc
class __$$MainResponseImplCopyWithImpl<$Res>
    extends _$MainResponseCopyWithImpl<$Res, _$MainResponseImpl>
    implements _$$MainResponseImplCopyWith<$Res> {
  __$$MainResponseImplCopyWithImpl(
      _$MainResponseImpl _value, $Res Function(_$MainResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
  }) {
    return _then(_$MainResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$MainResponseImpl implements _MainResponse {
  const _$MainResponseImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<ResultsModel> results})
      : _results = results;

  factory _$MainResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final String? previous;
  final List<ResultsModel> _results;

  @override
  List<ResultsModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'MainResponse(count: $count, next: $next, previous: $previous, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      __$$MainResponseImplCopyWithImpl<_$MainResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainResponseImplToJson(
      this,
    );
  }
}

abstract class _MainResponse implements MainResponse {
  const factory _MainResponse(
      {required final int count,
      required final String next,
      required final String? previous,
      required final List<ResultsModel> results}) = _$MainResponseImpl;

  factory _MainResponse.fromJson(Map<String, dynamic> json) =
      _$MainResponseImpl.fromJson;

  @override
  int get count;

  @override
  String get next;

  @override
  String? get previous;

  @override
  List<ResultsModel> get results;

  @override
  @JsonKey(ignore: true)
  _$$MainResponseImplCopyWith<_$MainResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
