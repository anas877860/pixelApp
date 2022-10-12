import 'package:flutter/material.dart';
import 'package:pixel_app/screens/birthday_screen/birthday_screen.dart';

import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';


class ProfileNameScreen extends StatelessWidget {
  ProfileNameScreen({Key? key}) : super(key: key);
  final _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, size.height * 0.1, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: size.width * 0.3,
                        color: blueColor,
                      ),
                      Container(
                        height: 5,
                        width: size.width * 0.59,
                        color: const Color(0xFFE9E9E9),
                      ),
                    ],
                  ),
                  kHeight(50),
                  reusableText("Complete Profile", 24, FontWeight.w700,
                      const Color(0XFF434343)),
                  reusableText("We would like to know your name", 18,
                      FontWeight.w700, const Color(0XFF434343)),
                  kHeight(20),
                  SizedBox(
                      height: 202,
                      width: double.infinity,
                      child: assetImage(undrawFireworks,)),
                  kHeight(30),
                  TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      label: reusableText("Your name", 16, FontWeight.w400,
                          const Color(0XFF434343)),
                      border: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFBEBEBE),
                        ),
                      ),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFBEBEBE),
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFFBEBEBE),
                        ),
                      ),
                    ),
                  ),
                  kHeight(70),
                  ReusableElevatedButton(
                      size: size,
                      text: "Next",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BirthdayScreen()));
                      }, isButtonWidth:false,),
                ],
              ),
            ),
            kHeight(87),
            assetImage(bottomLeftElement,),
          ],
        ),
      ),
    );
  }
}
