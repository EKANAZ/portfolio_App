import 'package:ek_anas/core/constants.dart';
import 'package:ek_anas/view/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

import '../core/colors.dart';

class Features extends StatelessWidget {
  const Features({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 85,
          child: Column(
            children: const [
              Text(
                "FEATURES",
                style: TextStyle(color: Colors.red, fontSize: 14),
              ),
              kheight,
              Text(
                "WHAT I DO",
                style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    letterSpacing: 3),
              ),
            ],
          ),
        ),
        const FeaturesCard(
            maintitle: "App Development",
            icons: Icons.mobile_friendly,
            title:
                "I have developed various Flutter apps for Android platforms, using the Dart programming language. I am proficient in using Flutter widgets, managing app state, and integrating APIs to create functional and responsive apps. "),
        kheight20,
        const FeaturesCard(
            maintitle: "UI/UX",
            icons: Icons.draw_outlined,
            title:
                "I create visually appealing anduser-friendly interfaces formobile applications, use tools such as Figma,cnava. "),
      ],
    );
  }
}

class FeaturesCard extends StatelessWidget {
  final IconData icons;
  final String maintitle;
  final String title;
  const FeaturesCard({
    Key? key,
    required this.icons,
    required this.maintitle,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 425,
      width: MediaQuery.of(context).size.width,
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
            Icon(
              icons,
              size: 45,
              color: Colors.red,
            ),
            kheight,
            PrimaryText(
              title: maintitle,
              fontsize: 20,
              letterSpacing: 3,
            ),
            PrimaryText(title: title)
          ],
        ),
      ),
    );
  }
}
