import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  double get height => MediaQuery.of(this).size.height;

  double responsiveHeight(double pixel) {
    return pixel <= 860 ? height * (pixel / 860) : pixel;
  }
}
