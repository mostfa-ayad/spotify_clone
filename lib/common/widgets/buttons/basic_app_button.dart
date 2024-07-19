import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicAppButton extends StatelessWidget {
  String title;
  void Function() onPressed;
  double height;
  BasicAppButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.height = 80.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size.fromHeight(height)),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
