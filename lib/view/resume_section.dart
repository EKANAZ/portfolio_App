import 'package:ek_anas/core/constants.dart';


import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';
import 'widgets/education_card.dart';

class ResumeSection extends StatelessWidget {
  const ResumeSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 115,
          child: Column(
            children: [
              elevatedButton(),
              kheight20,
              const Text(
                "Education",
                style: TextStyle(
                    color: kwhite,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    letterSpacing: 3),
              ),
            ],
          ),
        ),
        kheight20,
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 25),
              child: Row(
                children: [
                  SizedBox(width: size.width * 0.1),
                  SizedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        EducationCard(
                            title: "FLUTTER INTERN IN EDAPT",
                            subtitle: "FLUTTER INTERN IN EDAPT ",
                            description:
                                "After finishing my degree, I was offered a position as an intern at Edapt. I worked as a Flutter developer and gained valuable experience in creating UI and UX designs, integrating APIs, and maintaining code."),
                        kheight20,
                        EducationCard(
                            title: "Bachelor of Computer\nApplication (BCA)",
                            subtitle: "University of calicut 2019-2022 ",
                            description:
                                "BCA is a 3-year undergraduate degree programme that focuses of knowledge on the basics of computer application and software development."),
                        kheight20,
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 15,
              child: Container(
                height: 900,
                width: 3.0,
                color: const Color.fromARGB(64, 0, 0, 0),
              ),
            ),
            Positioned(
              bottom: 425,
              left: 8,
              child: Container(
                height: 23.0,
                width: 23.0,
                decoration: BoxDecoration(
                  color: Colors.red,
                  border: Border.all(
                    color: const Color.fromARGB(255, 8, 7, 7),
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            Positioned(
              bottom: 850,
              left: -35,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                  height: 23.0,
                  width: 23.0,
                  decoration:  BoxDecoration(
                    color: Colors.red,
                    border: Border.all(
                      color: const Color.fromARGB(255, 8, 7, 7),
                      width: 5,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  ElevatedButton elevatedButton() {
    return ElevatedButton(
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ))),
      onPressed: () => launchUrl(Uri.parse("https://ekanaz.github.io/EKANAS/")),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Text('Resume'),
          SizedBox(
            width: 5,
          ),
          Icon(
            Icons.download,
            size: 24.0,
          ),
        ],
      ),
    );
  }
}
