import 'package:flutter/material.dart';

import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/screen_main_page/screen_main_page.dart';
import 'package:pixel_app/screens/widgets/widgets.dart';

import 'package:table_calendar/table_calendar.dart';

class UploadPicScreen extends StatelessWidget {
  UploadPicScreen({Key? key}) : super(key: key);

  CalendarFormat _calendarFormat = CalendarFormat.month;

  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDay;

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
                        width: size.width * 0.89,
                        color: blueColor,
                      ),
                    ],
                  ),
                  kHeight(50),
                  reusableText("Complete Profile", 24, FontWeight.w700,
                      const Color(0XFF434343)),
                  reusableText("Upload profile pic", 18, FontWeight.w700,
                      const Color(0XFF434343)),
                  SizedBox(
                    width: double.infinity,
                    height: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Stack(
                          children: [
                            const SizedBox(
                              width: 143,
                              height: 143,
                              child: CircleAvatar(
                                radius: 69,
                                backgroundColor: Color(0XFFEAEAEA),
                              ),
                            ),
                            Positioned(
                                top: 90,
                                left: 111,
                                child: CircleAvatar(
                                  radius: 16,
                                  child: assetImage(
                                    boxCamera,
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  ReusableElevatedButton(
                    size: size,
                    text: "Next",
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ScreenMainPage()),
                          (route) => false);
                    },
                    buttonHeight: 49,
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
