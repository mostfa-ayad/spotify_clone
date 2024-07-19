import 'package:flutter/material.dart';

extension Size on BuildContext {
  double get hight => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}
