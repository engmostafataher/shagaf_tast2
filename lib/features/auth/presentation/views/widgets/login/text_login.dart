import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  final String texts;
  const TextLogin({super.key, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 10, left: 10, bottom: 10),
        width: double.infinity,
        child: Text(texts,style: TextStyle(fontWeight: FontWeight.bold),));
  }
}
