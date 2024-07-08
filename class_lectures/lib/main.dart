import 'package:class_lectures/pages/choose_location.dart';
import 'package:class_lectures/pages/home.dart';
import 'package:class_lectures/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
