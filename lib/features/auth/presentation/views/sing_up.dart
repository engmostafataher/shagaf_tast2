import 'package:flutter/material.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/sing_up/body_singup.dart';

class SingUp
 extends StatelessWidget {
  const SingUp
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: BodySingup()),
    ));
  }
}