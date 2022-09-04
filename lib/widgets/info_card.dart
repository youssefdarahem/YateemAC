import 'package:flutter/material.dart';

/*
* draws the card with the icon in the middle and the text on the top and bottom
* Parameter: 
*  String numbers : takes the text which will be displayed on the top 
*  Widget icon : takes a widget to show the icon 
*  String text : takes the text displayed at the bottom of the card
*/

class InfoCard extends StatelessWidget {
  final String numbers;
  final Widget icon;
  final String text;
  const InfoCard(
      {Key? key, required this.numbers, required this.text, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      height: 160,
      width: 130,
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromARGB(255, 3, 159, 156)),
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
      ),
      child: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(numbers),
              icon,
              Text(text),
            ]),
      ),
    );
  }
}
