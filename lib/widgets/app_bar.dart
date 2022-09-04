import 'package:flutter/material.dart';

import '../constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget logo;

  const MyAppBar({Key? key, required this.logo}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: mainColorsGradients,
          ),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: logo,
            ),
            const Spacer(),
            const Icon(Icons.notifications_none_outlined, color: Colors.white),
            const SizedBox(width: 10),
            const Icon(Icons.menu, color: Colors.white),
            const SizedBox(width: 10),
          ],
        ));
  }
}
