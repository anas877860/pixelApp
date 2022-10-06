import 'package:flutter/material.dart';
import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/sign_up_screen.dart';

import 'package:pixel_app/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
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
                padding: EdgeInsets.fromLTRB(19.0, size.height * 0.13, 19, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusableText(
                      "Login to account",
                      24,
                      FontWeight.bold,
                      const Color(0XFF434343),
                    ),
                    kHeight(5),
                    reusableText("Continue by login to you account", 16,
                        FontWeight.normal, const Color(0XFF434343)),
                    kHeight(50),
                    textFieldName("Your username"),
                    kHeight(10),
                    inputTextField(_userNameController,false),
                    kHeight(10),
                    textFieldName("Your Password"),
                    kHeight(10),
                    inputTextField(_passwordController,true),
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
                    kHeight(35),
                    ReusableElevatedButton(
                      size: size,
                      text: "Login",
                      onPressed: () {},
                    ),
                    kHeight(20),
                    assetImage(
                      signInGoogle,
                    ),
                    kHeight(40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        reusableText("Didn’t have account ?", 16,
                            FontWeight.w400, const Color(0XFF434343)),
                        // assetImage(
                        //   didAccount,
                        // ),

                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: reusableText("Sign up", 16, FontWeight.w600,
                                const Color(0XFF434343))),
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.push(
                        //           context,
                        //           MaterialPageRoute(
                        //               builder: (context) => SignUpScreen()));
                        //     },
                        //     child: assetImage(signUp)),
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
