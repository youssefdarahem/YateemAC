import 'package:flutter/material.dart';

class CopyRights extends StatelessWidget {
  const CopyRights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: Column(
          children: const [
            Text(
              '© 2022 YateemAc  All rights reserved',
              style: TextStyle(fontSize: 13, fontFamily: 'Poppins-Light'),
            ),
            Text(
              'terms and privacy',
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: 13,
                fontStyle: FontStyle.italic,
                fontFamily: 'Poppins-LightItalic',
              ),
            )
          ],
        ),
      ),
    );
  }
}
