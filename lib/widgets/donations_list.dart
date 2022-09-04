import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

/*
* builds the card with list views inside it. 
* Stack widget were used to make the effect that the 
  half of the icons are floating outside the card.
*/

class DonationsList extends StatelessWidget {
  const DonationsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [
      buildListTile(
        context,
        squareIcon('assets/images/check.svg', 1),
        'Eid Gift Delivered',
        'Look AT Sami impression :)',
        '14 Jul',
      ),
      buildListTile(
        context,
        squareIcon('assets/images/track.svg', 2),
        'Eid Gift Delivered',
        'Sana 3 Month Food Ready For Shipping',
        '15 Jul',
      ),
      buildListTile(
        context,
        squareIcon('assets/images/check.svg', 3),
        'Winter Clothes Delivered',
        'Look AT Sami impression :)',
        '28 Sep',
      ),
    ];

    return Column(
      children: [
        Text('Donation Timeline', style: Theme.of(context).textTheme.headline1),
        const SizedBox(height: 20.0),
        SizedBox(
          height: 320,
          child: Stack(
            children: <Widget>[
              Container(
                height: 400,
                width: double.infinity,
                margin: const EdgeInsets.fromLTRB(55.0, 10.0, 20.0, 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                // color: Colors.white,
                child: Align(
                  alignment: const Alignment(0, 1),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'View All',
                      style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: const Color.fromARGB(255, 3, 159, 156)),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  children: items,
                ),
                // color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

/*
* function that returns the little square Icons with the gradient background
*/
Widget squareIcon(String iconPath, int index) {
  const List<Color> palette = [
    Color.fromARGB(255, 30, 126, 203),
    Color.fromARGB(255, 67, 117, 153)
  ];

  const Color border1 = Color.fromARGB(255, 3, 159, 156);
  const Color border2 = Color.fromARGB(255, 61, 121, 169);

  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: index % 2 == 0 ? palette : mainColorsGradients,
      ),
      border: Border.all(color: index % 2 == 0 ? border2 : border1),
      borderRadius: BorderRadius.circular(5.0),
    ),
    child: Center(
      child: SvgPicture.asset(
        iconPath,
        height: 20,
        width: 20,
      ),
    ),
  );
}

/* 
* Function that returns the list view component
  with the icon leading and the date trailing
*/
Widget buildListTile(BuildContext context, Widget icon, String title,
    String subTitle, String trailing) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 10.0),
    child: Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: Colors.black),
                      ),
                      // const Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: Text(
                          trailing,
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    subTitle,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(left: 25.0, top: 5.0),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    ),
  );
}
