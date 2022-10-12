import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/home/screen_home.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              assetImage(errorOwl),
              kHeight(35.42),
              reusableText(
                  "Oops", 30, FontWeight.w600, const Color(0XFF1A1A1A)),
              kHeight(2),
              reusableText("Something went wrong", 15, FontWeight.w600,
                  const Color(0XFF2E2D2D)),
              kHeight(60),
              ReusableElevatedButton(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  buttonHeight: 50,
                  buttonColor: const Color(0XFFADADAD),
                  size: size,
                  text: "Back",
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ScreenHome(),
                        ),
                      );
                  },
                  isButtonWidth: true)
            ],
          ),
        ),
      ),
    );
  }
}
