import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';

class ReusableIconText extends StatelessWidget {
  final String text;
  final String icon;
  const ReusableIconText({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {},
          icon: assetImage(icon),
        ),
        reusableText(text, 10, FontWeight.w500, const Color(0XFF575757))
      ],
    );
  }
}