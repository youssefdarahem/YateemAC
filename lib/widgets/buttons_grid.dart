import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rectangular_button.dart';

// builds the grid of buttons on the 'Find Orphan To Support' section

class ButtonsGrid extends StatelessWidget {
  const ButtonsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> buttons = [
      RectangularButton(
          icon: SvgPicture.asset(
            'assets/images/hand-with-heart.svg',
          ),
          text: 'Urgent Cases',
          isGradient: false,
          onPressed: () {}),
      RectangularButton(
          icon: SvgPicture.asset(
            'assets/images/search.svg',
            color: Colors.white,
          ),
          text: 'Search',
          onPressed: () {}),
      RectangularButton(
          icon: SvgPicture.asset(
            'assets/images/boxes-with-plus.svg',
            color: Colors.white,
          ),
          text: 'Design Your Donation Plan',
          onPressed: () {}),
      RectangularButton(
          icon: SvgPicture.asset(
            'assets/images/track.svg',
            color: Colors.white,
          ),
          text: 'Track Your Donation',
          onPressed: () {}),
    ];
    return Container(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0, bottom: 30.0),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text(
              'Find Orphan To Support',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          GridView.count(
            shrinkWrap: true,
            childAspectRatio: (1 / 1.1),
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            children: buttons,
          ),
        ],
      ),
    );
  }
}
