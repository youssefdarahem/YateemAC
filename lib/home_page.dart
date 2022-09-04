import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'widgets/app_bar.dart';
import 'widgets/photo_slider.dart';
import 'widgets/buttons_grid.dart';
import 'widgets/donations_list.dart';
import 'widgets/info_list.dart';
import 'widgets/about_us_list.dart';
import 'widgets/copy_rights.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        logo: SvgPicture.asset(
          'assets/images/logo.svg',
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            PhotoSlider(),
            ButtonsGrid(),
            DonationsList(),
            InfoList(),
            AboutUsList(),
            CopyRights()
          ],
        ),
      ),
    );
  }
}
