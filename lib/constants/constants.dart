import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const splashImage = "assets/images/splash_image.png";

const logoPixel = "assets/images/logo.png";
const signInGoogle = "assets/images/google.png";

const bottomLeftElement = "assets/images/bottom_left_element.png";
const undrawFireworks = "assets/images/undraw_fireworks_re_2xi7 1.png";
const boxCamera = "assets/images/bxs_camera.png";

Image assetImage(
  String path,
) =>
    Image.asset(
      path,
    );
TextField inputTextField(TextEditingController controller, bool isPassword) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      // suffixText: "View",
      // suffixStyle: const TextStyle(
      //   fontSize: 12,
      //   fontWeight: FontWeight.w400,
      //   color: Color(0XFF787878),
      // ),
      suffix: isPassword
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
  );
}

Text textFieldName(String text) {
  return Text(text,
      style: const TextStyle(
        fontSize: 14,
        color: Color(0XFF656565),
      ));
}

SizedBox kHeight(double height) {
  return SizedBox(
    height: height,
  );
}

SizedBox kWidth(double width) {
  return SizedBox(
    width: width,
  );
}

Text reusableText(
    String text, double fontSize, FontWeight? fontWeight, Color? color) {
  return Text(text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ));
}

const blueColor = Color(0XFF0070C1);
