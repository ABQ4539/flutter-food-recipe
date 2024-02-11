import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  final String bgImg;
  const HeroSection({super.key, required this.bgImg});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,

      children: [
          Container(
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(15) ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Image.asset(bgImg)
            ),
          ),
          Image.asset("../assets/images/Play_button.png", fit: BoxFit.contain),
      ],
    );
  }
}
