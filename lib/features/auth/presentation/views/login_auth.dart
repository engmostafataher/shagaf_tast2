import 'package:flutter/material.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/body_login.dart';

class LoginAuth
 extends StatelessWidget {
  const LoginAuth
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: SingleChildScrollView(child: BodyLogin()),
    ));
  }
}