import 'package:flutter/material.dart';

class RowText extends StatelessWidget {
  final String text1;
  final String text2;
  const RowText({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1),
        Text(
          text2,
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
