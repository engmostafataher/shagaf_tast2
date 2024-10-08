import 'package:flutter/material.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/reset_password/body_reset_password.dart';

class ResetPassword
 extends StatelessWidget {
  const ResetPassword
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: BodyResetPassword(),
    ));
  }
}