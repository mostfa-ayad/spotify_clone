import 'package:flutter/material.dart';

extension Size on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  double get hight => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
