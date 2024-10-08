import 'package:flutter/material.dart';

class AppBarAuth
 extends StatelessWidget {
  const AppBarAuth
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 40,
      width: double.infinity,
      child: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_sharp)),
    );
  }
}