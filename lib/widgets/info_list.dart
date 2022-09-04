import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'info_card.dart';

// builds the list of Info cards in the 'So Far We Are' section
class InfoList extends StatelessWidget {
  const InfoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> iconCards = [
      InfoCard(
        numbers: '1000+',
        text: 'Orphans',
        icon: SvgPicture.asset(
          'assets/images/orphans.svg',
          // color: Colors.white,
          height: 40,
          width: 40,
        ),
      ),
      InfoCard(
        numbers: '250+',
        text: 'Donors',
        icon: SvgPicture.asset(
          'assets/images/hand-receive-money.svg',
          // color: Colors.white,
          height: 40,
          width: 40,
        ),
      ),
      InfoCard(
        numbers: '780+',
        text: 'Orphans Support',
        icon: SvgPicture.asset(
          'assets/images/orphans-support.svg',
          // color: Colors.white,
          height: 40,
          width: 40,
        ),
      ),
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Text('So Far We Are',
              style: Theme.of(context).textTheme.headline1),
        ),
        SizedBox(
          height: 195,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: iconCards,
          ),
        ),
      ],
    );
  }
}
