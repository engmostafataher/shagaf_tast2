import 'package:flutter/widgets.dart';

class BodyHomeScreens
 extends StatelessWidget {
  const BodyHomeScreens
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://thumbs.dreamstime.com/b/old-religious-book-6903282.jpg'))
        ),)
      ],
    );
  }
}