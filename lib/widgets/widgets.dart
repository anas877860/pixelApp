import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_app/constants/constants.dart';

class ReusableElevatedButton extends StatelessWidget {
  const ReusableElevatedButton({
    Key? key,
    required this.size,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final Function onPressed;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      height: 49,
      // size.height * 0.05,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(blueColor),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          text,
          style: GoogleFonts.poppins(
              textStyle:
                  const TextStyle(fontSize: 19, color: Color(0XFFEEF8F0),fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }
}
