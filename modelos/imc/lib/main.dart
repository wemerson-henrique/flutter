import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:imc/src/android/material-app.dart';
import 'package:imc/src/ios/cupertino-app.dart';

  void main() =>
      Platform.isIOS ? runApp(MyCupertinoApp()) : runApp(MyMaterialApp());


