import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rectangular_button.dart';

// builds the list that contains AboutUs cards

class AboutUsList extends StatelessWidget {
  const AboutUsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> aboutUs = [
      buildAboutUsButton(
        'assets/images/international-aid.svg',
        'International Aid Charity',
        () {},
      ),
      buildAboutUsButton(
        'assets/images/yateemAc.svg',
        'YateemAC',
        () {},
      ),
      buildAboutUsButton(
        'assets/images/contact-us.svg',
        'Contact Us',
        () {},
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text('About Us', style: Theme.of(context).textTheme.headline1),
        ),
        SizedBox(
          height: 195,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: aboutUs,
          ),
        ),
      ],
    );
  }
}

Widget buildAboutUsButton(
    String svgIconPath, String text, VoidCallback onPressed) {
  return Padding(
    padding: const EdgeInsets.only(left: 10.0, right: 5.0),
    child: RectangularButton(
      icon: SvgPicture.asset(
        svgIconPath,
        // color: Colors.white,
        height: 40,
        width: 40,
      ),
      text: text,
      onPressed: onPressed,
    ),
  );
}
