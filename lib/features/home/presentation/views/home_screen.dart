import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shagaf_tast2/features/home/presentation/views/widgets/body_home_screens.dart';

class HomeScreen
 extends StatelessWidget {
  const HomeScreen
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: BodyHomeScreens(),
    ));
  }
}