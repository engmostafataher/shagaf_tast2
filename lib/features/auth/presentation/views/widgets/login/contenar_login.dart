import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/core/utils/app_router.dart';
import 'package:shagaf_tast2/core/utils/colorss.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/bottom.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/row_text.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/text_form_field_login.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/text_login.dart';

class ContenarLogin extends StatefulWidget {
  const ContenarLogin({super.key});

  @override
  State<ContenarLogin> createState() => _ContenarLoginState();
}

class _ContenarLoginState extends State<ContenarLogin> {
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colorss.ColorsContenar,
          borderRadius: BorderRadius.circular(20)),
      width: 342,
      height: 330,
      child: Column(children: [
        const TextLogin(texts: 'Phone Number'),
        TextFormFieldLogin(
          obscureText: false,
          hints: 'Enter your phone number',
          icons: Icon(Icons.phone),
          keyboardKeys: TextInputType.phone,
        ),
        const SizedBox(
          height: 15,
        ),
        const TextLogin(texts: 'Password'),
        TextFormFieldLogin(
            obscureText: isPassword,
            hints: 'Enter your password',
            icons: IconButton(
                onPressed: () {
                  setState(() {
                    isPassword = !isPassword;
                  });
                },
                icon:isPassword? Icon(Icons.lock_open_rounded):Icon(Icons.lock)),
            keyboardKeys: TextInputType.visiblePassword),
        //Container(
        //margin:const EdgeInsets.only(right: 10, top: 5),
        //alignment: Alignment.bottomRight,
        //width: double.infinity,
        //child: const Text('Forget Password?')),
        InkWell(
          onTap: () {
            GoRouter.of(context).push(AppRouter.KResetPassword);
          },
          child: Container(
              margin: EdgeInsets.only(right: 10, top: 5),
              alignment: Alignment.bottomRight,
              width: double.infinity,
              child: Text('Forget Password?')),
        ),
        InkWell(
            onTap: () {
              GoRouter.of(context).push(AppRouter.KSingUp);
            },
            child: const Bottom(textBotom: 'LOGIN')),
        Container(
            margin: const EdgeInsets.only(left: 65),
            width: double.infinity,
            child: const RowText(
                text1: 'Don`t have on account? ', text2: 'Sign up')),
      ]),
    );
  }
}
