import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/profile_name_screen.dart';

import 'package:pixel_app/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              child: Padding(
                padding: EdgeInsets.fromLTRB(19.0, size.height * 0.11, 19, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusableText("Create account", 24, FontWeight.w700,
                        const Color(0XFF434343)),
                    // assetImage(
                    //   createAccount,
                    // ),

                    reusableText("Start exploring each pixels", 16,
                        FontWeight.w400, const Color(0XFF434343)),
                    // assetImage(exploringPixel),
                    kHeight(30),
                    textFieldName("Your username"),
                    kHeight(10),
                    inputTextField(_userNameController, false),
                    kHeight(10),
                    textFieldName("Your Password"),
                    kHeight(10),
                    inputTextField(_passwordController, false),
                    kHeight(10),
                    textFieldName("Confirm Password"),
                    kHeight(10),
                    inputTextField(_confirmPasswordController, true),
                    kHeight(10),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0XFF6B6B6B),
                          fontWeight: FontWeight.w400,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: "By signing in you are agree to pixel’s",
                              style: TextStyle()),
                          TextSpan(
                              text: " Terms of use",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              )),
                          TextSpan(text: " and", style: TextStyle()),
                        ],
                      ),
                    ),
                    kHeight(5),
                    reusableText("Privacy policy", 12, FontWeight.w600,
                        const Color(0xFF6B6B6B)),
                    kHeight(20),
                    ReusableElevatedButton(
                      size: size,
                      text: "Create account",
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfileNameScreen()),
                            (route) => false);
                      },
                    ),
                    kHeight(10),
                    assetImage(
                      signInGoogle,
                    ),
                    kHeight(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        reusableText("Already have account ?", 16,
                            FontWeight.w400, const Color(0XFF434343)),
                        // assetImage(
                        //   allReadyAccount,
                        // ),

                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: reusableText("Sign in", 16, FontWeight.w600,
                                const Color(0XFF434343)))
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.pop(context);
                        //     },
                        //     child: assetImage(
                        //       signIn,
                        //     )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            assetImage(
              bottomLeftElement,
            ),
          ],
        ),
      ),
    );
  }
}
