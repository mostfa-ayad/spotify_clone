import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/helpers/extintions.dart';
import 'package:spotify_clone/common/widgets/appbar/basic_app_bar.dart';
import 'package:spotify_clone/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/data/model/auth/signin_user_req.dart';
import 'package:spotify_clone/domin/usecases/auth/signin_usecase.dart';
import 'package:spotify_clone/presentation/auth/pages/signin_page.dart';
import 'package:spotify_clone/presentation/auth/pages/signup_page.dart';
import 'package:spotify_clone/presentation/home_page/pages/home_page.dart';

class SigninPage extends StatelessWidget {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        logo: SvgPicture.asset(height: 40, width: 40, AppVectors.logo),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              titleText(),
              const SizedBox(
                height: 25,
              ),
              nameField(context),
              const SizedBox(
                height: 15,
              ),
              passwordField(context),
              const SizedBox(
                height: 25,
              ),
              BasicAppButton(
                  title: "Sign In",
                  onPressed: () async {
                    var result = await SigninUsecase().call(SigninUserReq(
                      email: email.text,
                      password: password.text,
                    ));
                    result.fold(
                      (l) {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          l,
                          style: const TextStyle(color: Colors.white),
                        )));
                      },
                      (r) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Nor A member",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: const Text(
                " sign Up",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ))
        ],
      ),
    );
  }

  TextField nameField(BuildContext context) {
    return TextField(
      controller: email,
      decoration: const InputDecoration(hintText: "Enter name Or Email")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  TextField passwordField(BuildContext context) {
    return TextField(
      controller: password,
      decoration: const InputDecoration(hintText: "Password")
          .applyDefaults(Theme.of(context).inputDecorationTheme),
    );
  }

  Text titleText() {
    return const Text(
      "Sign In",
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
