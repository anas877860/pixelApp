import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';

class ProfileCompleationIndicatorSection extends StatelessWidget {
  const ProfileCompleationIndicatorSection({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 5,
          width: size.width * 0.59,
          color: blueColor,
        ),
        Container(
          height: 5,
          width: size.width * 0.3,
          color: const Color(0xFFE9E9E9),
        ),
      ],
    );
  }
}
