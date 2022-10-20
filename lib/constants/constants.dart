import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const splashImage = "assets/images/splash_image.png";

const logoPixel = "assets/images/logo.png";
const signInGoogle = "assets/images/google.png";

const bottomLeftElement = "assets/images/bottom_left_element.png";
const undrawFireworks = "assets/images/undraw_fireworks_re_2xi7 1.png";
const boxCamera = "assets/images/bxs_camera.png";
const homeIcon = "assets/icons/homeIcon.png";
const uploadIcon = "assets/icons/uploadIcon.png";
const downloadIcon = "assets/icons/downloadIcon.png";
const profilePic = "assets/images/profilePic.png";
const natureProfilePic = "assets/images/natureProfilePic.png";
const natureImage = "assets/images/natureImage.png";
const natureComment = "assets/images/comment.png";
const natureLike = "assets/images/like.png";
const errorOwl = "assets/images/errorOwl.png";
const backIcon = "assets/icons/backIcon.png";
const natureDetailImage = "assets/images/natureDetailImage.png";
 const commentProfile = "assets/images/commentProfile.png";
 const downloadImageButton="assets/images/downloadImageButton.png";
  const url = 'https://dummyapi.io/data/v1/post?limit=10';
   final apiKey= {'app-id':'6347d751d567684dd8a1d699'};
Image assetImage(
  String path,
) =>
    Image.asset(
      path,
    );

Text textFieldName(String text) {
  return Text(text,
      style: GoogleFonts.poppins(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0XFF656565),
        ),
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
const backgroundColor = Color(0XFFEEF8F0);
