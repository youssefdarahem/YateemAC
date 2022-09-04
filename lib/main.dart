import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        fontFamily: 'Poppins',
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 18.0),
          headline2: TextStyle(fontSize: 18.0),
          headline3: TextStyle(fontSize: 15.0),
          headline6: TextStyle(fontSize: 13.0, fontStyle: FontStyle.italic),
          bodyText1: TextStyle(
              fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
          bodyText2: TextStyle(fontSize: 13.0),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}
