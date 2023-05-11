import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryText extends StatelessWidget {
  final String title;
  final double fontsize;
  final double letterSpacing;

  const PrimaryText(
      {Key? key,
      required this.title,
      this.fontsize = 16,
      this.letterSpacing = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.montserrat(
          color: const Color.fromARGB(255, 189, 195, 207),
          fontSize: fontsize,
          fontWeight: FontWeight.w500,
          letterSpacing: letterSpacing,
          height: 2),
    );
  }
}
