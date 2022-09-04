import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'image_with_banner.dart';

// builds the photo slider for the first part of the screen
class PhotoSlider extends StatelessWidget {
  const PhotoSlider({Key? key}) : super(key: key);

  final List<ImageWithText> images = const [
    ImageWithText(
      text: 'Ed Cloths',
      imagePath: 'assets/images/01.jpeg',
    ),
    ImageWithText(
      text: 'Thank you.. 1,000 Orphans are sponsored..',
      imagePath: 'assets/images/02.jpeg',
    ),
    ImageWithText(
      text: 'Children Education is a Priority Of All Nations ',
      imagePath: 'assets/images/03.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: images,
          ),
        ),
        DotsIndicator(
          dotsCount: images.length,
          position: 1,
        )
      ],
    );
  }
}
