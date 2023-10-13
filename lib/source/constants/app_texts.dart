import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Barterland Heading Text Widget
class HeadingText extends StatelessWidget {
  final String text;
  final double? size;
  final TextOverflow overflow;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const HeadingText(
      {required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size,
      this.fontWeight = FontWeight.normal,
      this.textAlign,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: 'metropolis',
        color: Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}


//Barterland Main Text Widget
class AppText extends StatelessWidget {
  final String text;
  final double? size;
  final TextOverflow overflow;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  const AppText(
      {required this.text,
      this.overflow = TextOverflow.ellipsis,
      this.size,
      this.fontWeight = FontWeight.normal,
      this.textAlign,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        color: Colors.black,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
