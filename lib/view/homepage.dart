import 'package:ek_anas/core/colors.dart';
import 'package:ek_anas/core/constants.dart';

import 'package:ek_anas/view/projects_section.dart';

import 'package:ek_anas/view/button_section.dart';
import 'package:ek_anas/view/contact_section.dart';
import 'package:ek_anas/view/resume_section.dart';

import 'package:flutter/material.dart';

import '../widgets/text_widgets.dart';
import 'Features_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                size: 32,
                color: Colors.red,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          kheight,
          SizedBox(
            height: 400,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8), color: cardColor
                      // boxShadow: [
                      //   BoxShadow(
                      //     blurRadius: 25.0,
                      //   ),
                      // ],
                      ),
                  height: 250,
                ),
                Positioned(
                    bottom: 75,
                    left: 55,
                    child: SizedBox(
                      height: 300,
                      width: Size.width,
                      child: Image.asset("assets/profile-pic (6).png"),
                    ))
              ],
            ),
          ),
          const PrimaryText(
            letterSpacing: 2,
            title: "WELCOME TO MY WORLD",
          ),
          kheight20,
          const Text(
            "Hi, I'm",
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.w700, fontSize: 50),
          ),
          const Text(
            "Ek Anas",
            style: TextStyle(
                color: kwhite, fontWeight: FontWeight.w500, fontSize: 30),
          ),
          kheight,
          const PrimaryText(
            title:
                "Entry Level developer with a strong work ethic and customer service and satisfaction record. Adept multitasker capable of bringing simultaneous flutter app creation and repair projects to completion with full accuracy and efficiency",
            fontsize: 16,
          ),
          kheight40,
          const PrimaryText(
            title: "FIND WITH ME",
            letterSpacing: 2,
          ),
          kheight20,

          //ButtonSection
          const ButtonSection(),
          kheight40,

          const Features(),
          kheight40,
          const ProjectSection(),
          kheight40,

          
          kheight40,
   const ResumeSection(),
          kheight20,
          const ContactMe(),
        ])),
      ),
    );
  }
}
