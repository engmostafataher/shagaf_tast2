import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldLogin extends StatelessWidget {
  final String hints;
  final Widget icons;
  final TextInputType keyboardKeys;
  final bool obscureText;
  
   TextFormFieldLogin(
      {super.key,
      required this.obscureText,
      required this.hints,
      required this.icons,
      required this.keyboardKeys});
// hhhjjyut
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: TextFormField(
      
        obscureText: obscureText,
        keyboardType: keyboardKeys,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: hints,
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: icons,
            prefixIconColor: Colors.grey),
      ),
    );
  }
}
