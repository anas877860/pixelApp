import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';

import 'package:pixel_app/screens/logo_screen/logo_screen.dart';
import 'package:pixel_app/screens/search_home/screen_home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    checkLogin(context);
    return Scaffold(
      body: Container(
        color: blueColor,
        child: Center(
          child: Image.asset(
            logoPixel,
            color: const Color(0XFFEEF8F0),
          ),
        ),
      ),
    );
  }
}



checkLogin(context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  var email = prefs.getString('email');
   await Future.delayed(const Duration(seconds: 3));
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) =>
          email == null ? const LogoScreen() : const SearchScreenHome(),
    ),
  );
}
