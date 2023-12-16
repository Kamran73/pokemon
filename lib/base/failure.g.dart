// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FailureImpl _$$FailureImplFromJson(Map<String, dynamic> json) =>
    _$FailureImpl(
      errorMessage: json['errorMessage'] as String,
      errorCode: json['errorCode'] as String,
    );

Map<String, dynamic> _$$FailureImplToJson(_$FailureImpl instance) =>
    <String, dynamic>{
      'errorMessage': instance.errorMessage,
      'errorCode': instance.errorCode,
    };
