import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/main_response_model.dart';

part 'network_api_client.g.dart';

@RestApi()
abstract class NetworkApiClient {
  factory NetworkApiClient(Dio dio, {String baseUrl}) = _NetworkApiClient;

  @GET("pokemon/")
  Future<MainResponse> getPokeMon();
}
