import 'package:flutter/material.dart';
import 'package:yateem_app_test/widgets/image_with_banner.dart';

class PhotoSlider extends StatelessWidget {
  const PhotoSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          ImageWithText(
            text: 'Ed Cloths',
            imagePath: 'assets/images/01.jpeg',
          ),
          ImageWithText(
            text: 'Ed Cloths',
            imagePath: 'assets/images/01.jpeg',
          ),
        ],
      ),
    );
  }
}
