import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/core/utils/app_router.dart';
import 'package:shagaf_tast2/core/utils/colorss.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/bottom.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/logo.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/text_form_field_login.dart';

class BodyResetPassword extends StatelessWidget {
  const BodyResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarAuth(),
        const SizedBox(
          height: 50,
        ),
        const Logo(),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 342,
          height: 330,
          decoration: BoxDecoration(
              color: Colorss.ColorsContenar,
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter your phone number, we will send you',
                    style: TextStyle(color: Colors.grey),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 10, bottom: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'confirmation code+',
                    style: TextStyle(color: Colors.grey),
                  )),
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 10),
                alignment: Alignment.topLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 17),
                ),
              ),
               TextFormFieldLogin(
                obscureText: false,
                  hints: 'Enter your phone number',
                  icons: Icon(Icons.phone),
                  keyboardKeys: TextInputType.phone),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () {
                    GoRouter.of(context).push(AppRouter.KVerify);
                  },
                  child: const Bottom(
                    textBotom: 'Reset Password',
                  )),
            ],
          ),
        )
      ],
    );
  }
}
