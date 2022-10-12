import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/birthday_screen/widgets/calendar_section.dart';
import 'package:pixel_app/screens/birthday_screen/widgets/profile_compleation_indicator.dart';
import 'package:pixel_app/screens/upload_pic_screen/upload_pic_screen.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';

class BirthdayScreen extends StatefulWidget {
  const BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
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
                  ProfileCompleationIndicatorSection(size: size),
                  kHeight(50),
                  reusableText("Complete Profile", 24, FontWeight.w700,
                      const Color(0XFF434343)),
                  reusableText("Wish you birthday on", 18, FontWeight.w700,
                      const Color(0XFF434343)),
                  kHeight(30),
                  CalendarSection(),
                  kHeight(40),
                  ReusableElevatedButton(
                    size: size,
                    text: "Next",
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UploadPicScreen()));
                    },
                    isButtonWidth: false,
                  ),
                ],
              ),
            ),
            kHeight(74),
            assetImage(
              bottomLeftElement,
            ),
          ],
        ),
      ),
    );
  }
}
