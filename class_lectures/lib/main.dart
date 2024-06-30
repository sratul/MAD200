import 'package:flutter/material.dart';

void main() {
  // needs to take in a root widget
  // usually a custom widget but we are going to take in the MaterialApp
  // which is a built in widget
  // wrapper using Google Design Style

  runApp(const MaterialApp(
    // const improves performance because flutter does
    // not need to check each time for a change
    home: Text("Hello"), // default screen of app
  ));
}
