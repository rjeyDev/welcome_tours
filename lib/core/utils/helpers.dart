import 'package:flutter/material.dart';

class ColorHelper {
  static Color fromString(String? color) {
    return Color(int.parse("0xFF${color ?? '000000'}"));
  }
}

extension DoubleToPrice on double {
  num simplify() {
    return round() == this ? round() : this;
  }
}
