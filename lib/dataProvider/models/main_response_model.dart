import 'package:assessment/dataProvider/models/results_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_response_model.freezed.dart';

part 'main_response_model.g.dart';

@freezed
abstract class MainResponse with _$MainResponse {
  @JsonSerializable(explicitToJson: true)
  const factory MainResponse({
    required int count,
    required String next,
    required String? previous,
    required List<ResultsModel> results,
  }) = _MainResponse;

  factory MainResponse.fromJson(Map<String, dynamic> json) =>
      _$MainResponseFromJson(json);
}
