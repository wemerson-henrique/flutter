import 'package:alcoolougasolina/src/home/home.dart';
import 'package:alcoolougasolina/src/my_widget/input_widget.dart';
import 'package:alcoolougasolina/src/my_widget/loading_button_widget.dart';
import 'package:alcoolougasolina/src/my_widget/logo.dart';
import 'package:alcoolougasolina/src/my_widget/submit_form_widget.dart';
import 'package:alcoolougasolina/src/my_widget/success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alcool ou Gasolina',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

