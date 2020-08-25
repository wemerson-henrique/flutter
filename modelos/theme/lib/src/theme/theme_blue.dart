import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF00C569);
const lightColor = const Color(0xFFFFFFFF);
const backgroundColor = const Color(0xFFF5F5F5);

ThemeData ThemeBlue(){
  return ThemeData(
    // Define the default brightness and colors.
    brightness: Brightness.light,//cor de fundo sao darl light
    primaryColor: Colors.lightBlue[800],
    accentColor: Colors.cyan[600],

    // Define the default font family.
    fontFamily: 'Georgia',

    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(

    ),
  );
}