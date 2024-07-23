import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/helpers/extintions.dart';
import 'package:spotify_clone/common/widgets/buttons/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_images.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import 'package:spotify_clone/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.intro), fit: BoxFit.fill)),
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
                        "Enjoy listening to music",
                      ),
                      SizedBox(
                        height: context.hight * .02,
                      ),
                      SizedBox(
                        width: context.width * .85,
                        child: const Text(
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.clip,
                            maxLines: 5,
                            style:
                                TextStyle(fontSize: 18, color: AppColors.gray),
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam."),
                      ),
                      SizedBox(
                        height: context.hight * .05,
                      ),
                      BasicAppButton(
                        height: context.hight * .1,
                        title: "Get Started",
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChooseMode(),
                              ));
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
}
