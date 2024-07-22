import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/extintions.dart';
import 'package:spotify_clone/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/auth/pages/signup_or_signin.dart';
import 'package:spotify_clone/presentation/choose_mode/bloc/theme_cubit.dart';

class ChooseMode extends StatelessWidget {
  const ChooseMode({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.chooseModeBG),
                    fit: BoxFit.fill)),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(AppVectors.logo),
                  Column(
                    children: [
                      const Text(
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                        "Choose Mode",
                      ),
                      SizedBox(
                        height: context.hight * .05,
                      ),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildModeButton(AppVectors.moon, "Dark Mode", () {
                              context
                                  .read<ThemeCubit>()
                                  .updateTheme(ThemeMode.dark);
                            }),
                            buildModeButton(AppVectors.sun, "Light Mode", () {
                              context
                                  .read<ThemeCubit>()
                                  .updateTheme(ThemeMode.light);
                            })
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.hight * .1,
                      ),
                      BasicAppButton(
                        height: context.hight * .1,
                        title: "Continue",
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SignupOrSignin()));
                        },
                      ),
                      SizedBox(
                        height: context.hight * .05,
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }

  buildModeButton(String iconUrl, String title, void Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipOval(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: SizedBox(
                  height: 80,
                  width: 80,
                  child: DecoratedBox(
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: SvgPicture.asset(
                        iconUrl,
                        fit: BoxFit.none,
                      )),
                ),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: AppColors.gray,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
