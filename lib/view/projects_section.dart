import 'package:ek_anas/core/constants.dart';
import 'package:ek_anas/view/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 85,
          child: Column(
            children: const [
              kheight20,
              Text(
                "MY PROJECTS",
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
        const ProjectCard(
          image: AssetImage(
              "assets/artboard-1-(1920x1080)-63f50e5701f7b4e47f95634b@2x.png"),
          projectName: "Ecommerce",
          url: 'https://github.com/EKANAZ/Ecommerce.git',
        ),
        kheight20,
        const ProjectCard(
          image: AssetImage(
              "assets/artboard-1-(1200x1600)-63f51abc01f7b4e47f95638b@2x.png"),
          projectName: "Task App",
          url: 'https://github.com/EKANAZ/event_app.git',
        ),
        kheight20,
        const ProjectCard(
          image: AssetImage("assets/login.png"),
          projectName: "Login FIrebase",
          url: 'assets/images/projectimage/login.png',
        ),
        kheight20,
        const ProjectCard(
          image: AssetImage("assets/quizapp.png"),
          projectName: "Quiz App",
          url: 'https://github.com/EKANAZ/quiz_app.git',
        )
      ],
    );
  }
}

class ProjectCard extends StatelessWidget {
  final ImageProvider<Object> image;
  final String projectName;
  final String url;
  const ProjectCard({
    Key? key,
    required this.image,
    required this.projectName,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: Column(
        children: [
          Container(
            height: 360,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 33, 36, 41),
                borderRadius: BorderRadius.circular(20),
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                          fit: BoxFit.cover,
                          image: image,
                        ),
                      )),
                  PrimaryText(
                    title: projectName,
                    fontsize: 25,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
