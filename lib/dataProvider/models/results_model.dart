import 'package:freezed_annotation/freezed_annotation.dart';

part 'results_model.freezed.dart';

part 'results_model.g.dart';

@freezed
abstract class ResultsModel with _$ResultsModel {
  @JsonSerializable(explicitToJson: true)
  const factory ResultsModel({
    required String name,
    required String url,
  }) = _ResultsModel;

  factory ResultsModel.fromJson(Map<String, dynamic> json) =>
      _$ResultsModelFromJson(json);
}
