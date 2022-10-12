import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/login_screen/login_screen.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';




class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, size.height * 0.14, 10, 10),
              child: Center(
                child: assetImage(
                  splashImage,
                ),
              ),
            ),
            kHeight(33),
            Image.asset(logoPixel, color: blueColor),
            kHeight(25),
            reusableText(
                "Let’s share those awesome clicks \n camera is an extension of eyes",
                19,
                FontWeight.w500,
                const Color(0XFF434343)),
            kHeight(35),
            ReusableElevatedButton(
              size: size,
              text: "Get Started",
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }, isButtonWidth:false,
            ),
            Row(children: [
              assetImage(
                bottomLeftElement,
              ),
            ])
          ],
        ),
      ),
    );
  }
}
