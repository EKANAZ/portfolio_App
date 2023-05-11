
import 'package:ek_anas/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/constants.dart';

class EducationCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  const EducationCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 33, 36, 41),
          borderRadius: BorderRadius.circular(10),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
              color: Color.fromARGB(252, 33, 36, 41),
              offset: Offset(6, 6),
              blurRadius: 15,
              spreadRadius: 1,
            ),
            // const BoxShadow(
            //   color: Color.fromARGB(24, 181, 186, 197),
            //   offset: Offset(-6, -0),
            //   blurRadius: 15,
            //   spreadRadius: 1,
            // )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.montserrat(
                  color: const Color.fromARGB(255, 248, 249, 251),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 2),
            ),
            PrimaryText(title: subtitle),
            kheight20,
            PrimaryText(title: description)
          ],
        ),
      ),
    );
  }
}
