import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/contenar_login.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/logo.dart';


class BodyLogin extends StatelessWidget {
  const BodyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AppBarAuth(),
        SizedBox(
          height: 50,
        ),
        Logo(),
        SizedBox(
          height: 30,
        ),
        ContenarLogin()
      ],
    );
  }
}
