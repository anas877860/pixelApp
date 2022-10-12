import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    Key? key,
    required this.size,
    required this.text,
    required this.onPressed,
    required this.isButtonWidth,
    this.buttonHeight = 49,
    this.buttonWidth = 110,
    this.fontSize = 19,
    this.fontWeight = FontWeight.w500,
    this.textColor = const Color(0XFFEEF8F0),
    this.buttonColor = blueColor,
  }) : super(key: key);
  final String text;
  final Function onPressed;
  final double buttonHeight;
  final double buttonWidth;
  final Size size;
  final bool isButtonWidth;
  final double fontSize;
  final FontWeight fontWeight;
  final Color textColor;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isButtonWidth ? buttonWidth : size.width * 0.9,
      height: buttonHeight,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(buttonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ))),
        onPressed: () {
          onPressed();
        },
        child: reusableText(
          text,
          fontSize,
          fontWeight,
          textColor,
        ),
      ),
    );
  }
}

class InputTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPasswordView;
  const InputTextField(
      {Key? key, required this.controller, required this.isPasswordView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          // suffixText: "View",
          // suffixStyle: const TextStyle(
          //   fontSize: 12,
          //   fontWeight: FontWeight.w400,
          //   color: Color(0XFF787878),
          // ),
          suffix: isPasswordView
              ? const Text(
                  "View",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0XFF787878)),
                )
              : null,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3),
            borderSide: const BorderSide(
              width: 1.5,
              color: Color(0XFFBEBEBE),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(3.0),
            borderSide: const BorderSide(
              width: 3,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
