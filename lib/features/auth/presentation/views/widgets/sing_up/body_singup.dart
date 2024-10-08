import 'package:flutter/material.dart';
import 'package:shagaf_tast2/core/utils/colorss.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/bottom.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/logo.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/row_text.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/text_form_field_login.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/text_login.dart';

class BodySingup extends StatefulWidget {
  const BodySingup({super.key});

  @override
  State<BodySingup> createState() => _BodySingupState();
}

class _BodySingupState extends State<BodySingup> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AppBarAuth(),
        const SizedBox(
          height: 30,
        ),
        const Logo(),
        const SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colorss.ColorsContenar,
              borderRadius: BorderRadius.circular(20)),
          width: 342,
          height: 440,
          child: Column(
            children: [
              const TextLogin(texts: 'Phone Number'),
              TextFormFieldLogin(
                  obscureText: false,
                  hints: 'Enter your phone number',
                  icons: Icon(Icons.phone),
                  keyboardKeys: TextInputType.phone),
              const SizedBox(
                height: 2,
              ),
              const TextLogin(texts: 'User Name'),
              TextFormFieldLogin(
                  obscureText: false,
                  hints: 'Enter your name',
                  icons: Icon(Icons.face),
                  keyboardKeys: TextInputType.text),
              const SizedBox(
                height: 2,
              ),
              const TextLogin(
                texts: 'Password',
              ),
              TextFormFieldLogin(
                obscureText: isObscure,
                hints: 'Enter your password',
                icons: IconButton(onPressed: (){
                  setState(() {
                    isObscure = !isObscure;
                  });
                }, icon: isObscure?Icon(Icons.lock_open_rounded):Icon(Icons.lock) ),
                keyboardKeys: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 2,
              ),
              const TextLogin(
                texts: 'Confirm Password',
              ),
              TextFormFieldLogin(
                obscureText: false,
                hints: 'Confirm password',
                icons: Icon(Icons.lock),
                keyboardKeys: TextInputType.visiblePassword,
              ),
              const Bottom(textBotom: 'SIGN UP'),
              Container(
                  margin: EdgeInsets.only(left: 65),
                  child: RowText(
                      text1: 'Already have an account? ', text2: 'Log in'))
            ],
          ),
        )
      ],
    );
  }
}
