import 'package:beard/src/layout/layout.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beard',
      debugShowCheckedModeBanner: false,//tira o baner
      theme: ThemeData(
        primarySwatch: Colors.blue,//paleta de cores da aplicação
      ),
      home: Layout(),//home chma a aplicação
    );
  }
}

