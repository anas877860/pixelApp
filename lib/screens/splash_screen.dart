import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/logo_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    log(context);
    return Scaffold(
      body: Container(
          color: Colors.blue,
          child: Center(
              child: assetImage(
            logoPixel,
          ))),
    );
  }
}

log(context) async {
  await Future.delayed(const Duration(seconds: 3));
  Navigator.pushReplacement(
      context, MaterialPageRoute(builder: (context) => const LogoScreen()));
}
