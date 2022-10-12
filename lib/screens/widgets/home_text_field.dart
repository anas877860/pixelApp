import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_app/constants/constants.dart';

class HomeTextField extends StatelessWidget {
  final String text;
  final bool isIcon;
  const HomeTextField({Key? key, required this.text, required this.isIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: GoogleFonts.poppins(
              textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFB8B8B8))),
          prefixIcon: isIcon
              ? Image.asset(
                  boxCamera,
                  color: const Color(0XFFB8B8B8),
                )
              : null,
          filled: true,
          fillColor: const Color(0XFFFFFFFF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0XFFCBCBCB),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0XFFCBCBCB),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Color(0XFFCBCBCB),
            ),
          ),
        ),
      ),
    );
  }
}
