import 'package:flutter/cupertino.dart';

extension NumExtensions on num {
  SizedBox get sizedWidth => SizedBox(width: double.parse(toString()));

  SizedBox get sizedHeight => SizedBox(height: double.parse(toString()));
}
