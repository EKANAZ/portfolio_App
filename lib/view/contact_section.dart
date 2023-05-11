import 'package:ek_anas/core/constants.dart';
import 'package:ek_anas/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../core/colors.dart';
import '../widgets/button_widgets.dart';

class ContactMe extends StatelessWidget {
  const ContactMe({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: const [
            Text(
              "CONTACT",
              style: TextStyle(color: Colors.red, fontSize: 14),
            ),
            kheight20,
            Text(
              "Contact With Me",
              style: TextStyle(
                  color: kwhite,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  letterSpacing: 3),
            ),
          ],
        ),
      ),
      const ContactCard()
    ]);
  }
}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 525,
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
            padding: const EdgeInsets.only(left: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                child: Center(
                  child: Image.asset(
                    "assets/Saly-31.png",
                    height: 225,
                  ),
                ),
              ),
              kWidth30,
              const Text(
                "Ek Anas",
                style: TextStyle(
                    color: kwhite, fontWeight: FontWeight.w500, fontSize: 30),
              ),
              const PrimaryText(
                title: "Flutter developer",
                fontsize: 20,
              ),
              kheight20,
              InkWell(
                  onTap: () {
                    launchUrl(Uri.parse("tel:+919656788465"));
                  },
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'phone:',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 189, 195, 207)),
                        ),
                        TextSpan(
                          text: ' 9656788465',
                          style: TextStyle(color: Colors.blue, fontSize: 16),
                        ),
                      ],
                    ),
                  )),
              kheight,
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Email:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 189, 195, 207)),
                    ),
                    TextSpan(
                      text: ' ekanazek@gmail.com',
                      style: TextStyle(color: kwhite, fontSize: 18),
                    ),
                  ],
                ),
              ),
              kheight,
              const PrimaryText(
                title: "FIND WITH ME",
                letterSpacing: 2,
              ),
              kheight,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Button(
                    url: 'https://www.facebook.com/EKANASEK/',
                    svgAssetPath: 'assets/icons/facebook (2).svg',
                  ),
                  Button(
                    url: 'https://www.instagram.com/ek_anaz/',
                    svgAssetPath: 'assets/icons/instagram.svg',
                  ),
                  Button(
                    url: 'https://www.linkedin.com/in/ekanas/',
                    svgAssetPath: 'assets/icons/linkedin.svg',
                  ),
                ],
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
