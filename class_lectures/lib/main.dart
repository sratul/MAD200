import 'package:class_lectures/HomeScreen.dart';
import 'package:class_lectures/SecondScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(initialRoute: '/', routes: {
    '/': (context) => Homescreen(),
    '/second': (context) => Secondscreen(),
  }));
}
