import 'package:flutter/material.dart';
import 'package:yateem_app_test/widgets/image_with_banner.dart';
import 'package:yateem_app_test/widgets/photo_slider.dart';

import 'widgets/app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          PhotoSlider(),
        ],
      ),
    );
  }
}
