import 'package:class_lectures/home.dart';
import 'package:flutter/material.dart';

// we have to import Home as well
// so that it can be called

void main() {
  runApp(const MaterialApp(
      // similar to how libraries need to be imported to use them
      // home needs to be imported. Highlight Home below and click quick-fix
      // select the first option: something similar to 'package:class_lectures/home.dart';
      home: Home() // default screen of app
      ));
}
