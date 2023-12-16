import 'dart:io';

import 'package:dio/dio.dart';

extension DioExtension on DioException {
  bool get isInternetConnectionError =>
      type == DioExceptionType.connectionError && error is SocketException;
}
