import 'package:flutter/material.dart';
import 'package:theme/src/home/home_page.dart';
import 'package:theme/src/theme/theme_blue.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme',
      debugShowCheckedModeBanner: false,
      theme: ThemeBlue(),
      home: HomePage(),
    );
  }
}


