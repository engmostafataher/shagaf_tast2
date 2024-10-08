import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/core/utils/app_router.dart';
import 'package:shagaf_tast2/core/utils/assets_image.dart';


class OnbordingScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      navigatorKey: GlobalKey<NavigatorState>(),
      home: OnBoardingSlider(
        addController: true,
        imageVerticalOffset: 50,
        imageHorizontalOffset: 50,
        addButton: true,
        controllerColor: Colors.red,
        pageBackgroundColor: const Color(0xff146356),
        headerBackgroundColor: const Color(0xff146356),
        finishButtonText: 'Login',
        onFinish: () {
          GoRouter.of(context).push(AppRouter.KLogin);
        },
        finishButtonStyle: const FinishButtonStyle(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          backgroundColor: Colors.black38,
        ),
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(color: Colors.white),
        ),
        trailing: Container(),
        background: [
          Image.asset(width: 350, height: 350, AssetsImage.onboardingImage1),
          Image.asset(width: 350, height: 350, AssetsImage.onboardingImage2),
          Image.asset(width: 350, height: 350, AssetsImage.onboardingImage3),
        ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Text(
                  'Your favorite place to work',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    '          In Shaghaf Co-working space,\n  we provide a place that makes you more\n   productive, enjoyable and comfortable\n        A place made up of different parts',
                    style: TextStyle(color: Color(0xffFFC100), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Text(
                  'Delightful open air',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    '    You can choose a game to play from the\n many games we have , sit at a comfortable\n       base, or take pictures in the different\n    places that have been specially made to\n                   take beautiful pictures.',
                    style: TextStyle(color: Color(0xffFFC100), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 430,
                ),
                Text(
                  'Choose your favorite room',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    '     You can find the right room for your\n  current mood, as we have many rooms \n      that meet all needs, You can move \nbetween funny room, training room and \n                      meeting room',
                    style: TextStyle(color: Color(0xffFFC100), fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
