import 'package:flutter/foundation.dart';

class Utils {
  Utils._();

  static console(String logText) {
    if (kDebugMode) {
      print(logText);
    }
  }
}
