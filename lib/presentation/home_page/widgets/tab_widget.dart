import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:spotify_clone/common/helpers/extintions.dart';

class TabWidget extends StatelessWidget {
  String title;
  TabWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: context.isDarkMode ? Colors.white : Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold),
    );
  }
}
