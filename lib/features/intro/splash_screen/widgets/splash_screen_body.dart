import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/core/utils/app_router.dart';
import 'package:shagaf_tast2/core/utils/assets_image.dart';
import 'package:flutter_circular_progress_indicator/flutter_circular_progress_indicator.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gotoenbording();
  }

  gotoenbording() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRouter.KOnboarding);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff146356),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 95,
            height: 160,
            child: Image.asset(AssetsImage.logo),
          )),
          const Padding(
            padding: EdgeInsets.only(top: 0, left: 190, right: 190),
            child: LoadingIndicator(
                indicatorType: Indicator.ballPulse,
                colors: [Color(0xffF04C29)],
                strokeWidth: 4.0,
                pathBackgroundColor: Colors.black),
          )
        ],
      ),
    );
  }
}
