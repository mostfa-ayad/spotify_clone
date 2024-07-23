import 'package:flutter/material.dart';
import 'package:spotify_clone/common/helpers/extintions.dart';

class BasicAppBar extends StatelessWidget {
  const BasicAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        icon: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: (context.isDarkMode)
                  ? Colors.white.withOpacity(0.02)
                  : Colors.black.withOpacity(0.02),
              shape: BoxShape.circle),
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 15,
          ),
        ),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
