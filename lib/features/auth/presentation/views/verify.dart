import 'package:flutter/material.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/verify/body_verify.dart';

class Verify
 extends StatelessWidget {
  const Verify
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: BodyVerify()),
    ));
  }
}