import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pixel_app/constants/constants.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 55),
      child: SizedBox(
        height: 100,
        child: TextField(
          maxLines: 5,
          decoration: InputDecoration(
            alignLabelWithHint: true,
            filled: true,
            fillColor: const Color(0XFFFDFDFD),
            label: reusableText("Write your comment", 16, FontWeight.w400,
                const Color(0XFF868282)),
           
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0XFFCECECE),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0XFFCECECE),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: Color(0XFFCECECE),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
