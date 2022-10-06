import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pixel_app/constants/constants.dart';
import 'package:pixel_app/screens/upload_pic_screen.dart';
import 'package:pixel_app/widgets/widgets.dart';
import 'package:table_calendar/table_calendar.dart';

class BirthdayScreen extends StatefulWidget {
  BirthdayScreen({Key? key}) : super(key: key);

  @override
  State<BirthdayScreen> createState() => _BirthdayScreenState();
}

class _BirthdayScreenState extends State<BirthdayScreen> {
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
                        width: size.width * 0.59,
                        color: blueColor,
                      ),
                      Container(
                        height: 5,
                        width: size.width * 0.3,
                        color: const Color(0xFFE9E9E9),
                      ),
                    ],
                  ),
                  kHeight(50),
                  reusableText("Complete Profile", 24, FontWeight.w700,
                      const Color(0XFF434343)),
                  reusableText("Wish you birthday on", 18, FontWeight.w700,
                      const Color(0XFF434343)),
                  kHeight(30),
                  Ink(
                    color: const Color(0XFFD7EFDC),
                    child: TableCalendar(
                      focusedDay: _focusedDay,
                      firstDay: DateTime(1930),
                      lastDay: DateTime(2023),
                      calendarFormat: _calendarFormat,
                      rowHeight: 45,
                      headerStyle: HeaderStyle(
                        headerMargin: const EdgeInsets.only(left: 15),
                        formatButtonVisible: false,
                        leftChevronVisible: false,
                        rightChevronVisible: false,
                        titleTextStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color(0XFF000000),
                          ),
                        ),
                      ),
                      daysOfWeekStyle: DaysOfWeekStyle(
                        weekdayStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(0, 0, 0, 0.66),
                          ),
                        ),
                        weekendStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w900,
                            color: Color.fromRGBO(0, 0, 0, 0.66),
                          ),
                        ),
                      ),
                      calendarStyle: CalendarStyle(
                        todayTextStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5B5B5B),
                          ),
                        ),
                        todayDecoration: const BoxDecoration(
                          color: Color.fromARGB(255, 128, 202, 255),
                          shape: BoxShape.circle,
                        ),
                        outsideDaysVisible: false,
                        defaultTextStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5B5B5B),
                          ),
                        ),
                        weekendTextStyle: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF5B5B5B),
                          ),
                        ),
                        selectedDecoration: const BoxDecoration(
                          color: Color.fromARGB(255, 151, 128, 255),
                          shape: BoxShape.circle,
                        ),
                      ),
                      onDaySelected: (selectedDay, focusedDay) {
                        if (!isSameDay(_selectedDay, selectedDay)) {
                          setState(() {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                          });
                        }
                      },
                      selectedDayPredicate: (day) {
                        return isSameDay(_selectedDay, day);
                      },
                    ),
                  ),
                  kHeight(40),
                  ReusableElevatedButton(
                      size: size, text: "Next", onPressed: () {
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UploadPicScreen()));
                      }),
                ],
              ),
            ),
            kHeight(74),
            assetImage(bottomLeftElement,),
          ],
        ),
      ),
    );
  }
}
