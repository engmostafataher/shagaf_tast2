import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  final String textBotom;
  const Bottom({super.key, required this.textBotom});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xff20473E), borderRadius: BorderRadius.circular(10)),
      child: Text(
        textBotom,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
