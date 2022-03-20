import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final double? letterSpacing;

  const AppText(
      {Key? key,
      required this.text,
      required this.fontSize,
      this.fontWeight,
      this.color,
      this.letterSpacing})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            color: color,
            letterSpacing: letterSpacing),
      ),
    );
  }
}
