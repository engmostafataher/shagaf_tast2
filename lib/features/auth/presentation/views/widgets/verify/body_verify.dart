import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf_tast2/core/utils/assets_image.dart';
import 'package:shagaf_tast2/core/utils/colorss.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/app_bar_auth.dart';
import 'package:shagaf_tast2/features/auth/presentation/views/widgets/login/logo.dart';

class BodyVerify extends StatelessWidget {
  const BodyVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBarAuth(),
        SizedBox(
          height: 50,
        ),
        Logo(),
        SizedBox(
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
                    'ُEnter Varification Code',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 15, left: 10),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Enter code that we have sent to your number',
                    style: TextStyle(color: Colors.grey),
                  )),
              Container(
                  margin: EdgeInsets.only(top: 5, left: 10, bottom: 50),
                  alignment: Alignment.topLeft,
                  child: Text(
                    '01099579***',
                  )),
              OtpTextField(
                numberOfFields: 6,
                enabledBorderColor: Colors.black,
                borderRadius: BorderRadius.circular(14),
                // borderColor: Colors.black,
                //        Color disabledBorderColor = const Color(),
                // Color enabledBorderColor = const Color(),
                // Color borderColor = const Color(),
                // Color focusedBorderColor = const Color(),
                //set to true to show as box or false to show as dash
                showFieldAsBox: true,
                //runs when a code is typed in
                onCodeChanged: (String code) {
                  //handle validation or checks here
                },
                //runs when every textfield is filled
                onSubmit: (String verificationCode) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Container(
                            alignment: Alignment.topCenter,
                            width: 200,
                            height: 220,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        AssetsImage.alert_dialog,),),),
                            child: Container(
                                alignment: Alignment.bottomCenter,
                                width: double.infinity,
                                height: double.infinity,
                                child: Text('Success')),
                          ),
                          content: Container(
                              margin: EdgeInsets.only(left: 25, bottom: 5),
                              child: Text(
                                'You have successfully reset\n           your password.',
                                style: TextStyle(color: Colors.grey),
                              )),
                          actions: [
                            InkWell(
                              onTap: () {
                                GoRouter.of(context).pop();
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Color(0xff20473E),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                width: double.infinity,
                                height: 50,
                                child: Text(
                                  'Done',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        );
                      });
                }, // end onSubmit
              ),
            ],
          ),
        )
      ],
    );
  }
}
