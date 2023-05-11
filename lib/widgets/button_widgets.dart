
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class Button extends StatelessWidget {
  final String svgAssetPath;
  final String url;

  const Button({
    Key? key,
    required this.url,
    required this.svgAssetPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => launchUrl(Uri.parse(url)),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 33, 36, 41),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(0, 33, 36, 41),
                      offset: Offset(6, 6),
                      blurRadius: 15,
                      spreadRadius: 1,
                    ),
                    BoxShadow(
                      color: Color.fromARGB(24, 181, 186, 197),
                      offset: Offset(-6, -6),
                      blurRadius: 15,
                      spreadRadius: 1,
                    )
                  ]),
              child: SvgPicture.asset(
                
                svgAssetPath,
                width: 5,
                height: 5,
                fit: BoxFit.scaleDown,
                color: const Color.fromARGB(255, 189, 195, 207),
              )),
        ));
  }
}
