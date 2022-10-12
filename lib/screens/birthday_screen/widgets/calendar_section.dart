import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSection extends StatefulWidget {
  CalendarSection({Key? key}) : super(key: key);

  @override
  State<CalendarSection> createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection> {
  CalendarFormat _calendarFormat = CalendarFormat.month;

  DateTime _focusedDay = DateTime.now();

  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Ink(
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
          dowTextFormatter: (date, locale) =>
              DateFormat.E(locale).format(date).toString().toUpperCase(),
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
    );
  }
}
