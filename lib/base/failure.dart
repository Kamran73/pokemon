import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

part 'failure.g.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure({
    required final String errorMessage,
    required final String errorCode,
  }) = _Failure;

  factory Failure.fromJson(Map<String, dynamic> json) =>
      _$FailureFromJson(json);
}
