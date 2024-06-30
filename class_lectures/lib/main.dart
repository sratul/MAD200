import 'package:flutter/material.dart';

void main() {
  // needs to take in a root widget
  // usually a custom widget but we are going to take in the MaterialApp
  // which is a built in widget
  // wrapper using Google Design Style

  runApp(MaterialApp(
    // const improves performance because flutter does
    // not need to check each time for a change
    // appBars cannot be a constant anymore so we have to remove the const
    home: Scaffold(
      // each screen will have its own scaffold
      // appBar argument with an appBar widget
      appBar: AppBar(
        // instead we can add the const here whenever we encounter blue
        // squigly lines
        // helps with performance but we may have to remove them once again
        title: const Text("Hello World"), // arguments end with comma
        backgroundColor: Colors.blueGrey[500],
        centerTitle: true,
      ),
      body: const Text("Hello to All of you!!!!"),
    ), // default screen of app
  ));
}
// needed an ancestor widget for proper design
