import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/helpers/extintions.dart';
import 'package:spotify_clone/common/widgets/appbar/basic_app_bar.dart';
import 'package:spotify_clone/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/presentation/auth/pages/signin_page.dart';
import 'package:spotify_clone/presentation/auth/pages/signup_page.dart';

class SignupOrSignin extends StatelessWidget {
  const SignupOrSignin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            BasicAppBar(),
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(AppVectors.topPattern),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppVectors.bottomPattern),
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset(AppImages.signupOrSigninBG)),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.logo),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Enjoy listening to music",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                        style: TextStyle(fontSize: 18),
                        textAlign: TextAlign.center,
                        "Spotify is a proprietary Swedish audio streaming and media services provider"),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(children: [
                      Expanded(
                          flex: 1,
                          child: BasicAppButton(
                              title: "Register",
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignupPage(),
                                    ));
                              })),
                      Expanded(
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SigninPage(),
                                    ));
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: (context.isDarkMode)
                                        ? Colors.white
                                        : Colors.black),
                              ))),
                    ])
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
