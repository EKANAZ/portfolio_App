
import 'package:flutter/material.dart';


import '../widgets/button_widgets.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 32,
      runSpacing: 16,
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
        // kWidth30,
        Button(
          url: 'https://github.com/EKANAZ',
          svgAssetPath: 'assets/icons/github.svg',
        ),
        // kWidth20,
      ],
    );
  }
}
