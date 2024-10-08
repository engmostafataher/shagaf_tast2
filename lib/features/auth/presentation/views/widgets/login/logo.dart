import 'package:flutter/material.dart';
import 'package:shagaf_tast2/core/utils/assets_image.dart';

class Logo
 extends StatelessWidget {
  const Logo
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 235,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(AssetsImage.logo))
      ),
    );
  }
}