import 'dart:convert';

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
      // body: const Text("Hello to All of you!!!!"),
      body: const Home(), // adding the stateless widget
    ), // default screen of app
  ));
}
// needed an ancestor widget for proper design

// For stateless widget we need a build method
// this returns a widget tree

// create a boiler plate - stateless widget by typing
// stl

// rename MyWidget to Home. Always start with Capital letter
// extends inherits properties of StatelessWidget - a class
// the first time you add a stateless widget
// you have to save and re-run the app
// After that you can just save to see your
// changes on screen
// You have enabled HOT RELOADING
class Home extends StatelessWidget {
  const Home({super.key}); // ignore this for now

  // buildContext object gives information about the
  // location within the app
  @override
  Widget build(BuildContext context) {
    // either return a widget or widget tree
    // return const Placeholder(); // just a cross;
    // return const Text("Hello Again from the Stateless World");
    return Container(
      color: Colors.orange,
      // width: 200,
      // height: 100,
      padding: const EdgeInsets.all(20), // apply equally all sides
      // margin: const EdgeInsets.only(left: 20),
      margin: const EdgeInsets.fromLTRB(10, 40, 0, 0),
      child: const Text(
        "Hello Again",
        style: TextStyle(
          fontSize: 40,
          letterSpacing: 4,
          decoration: TextDecoration.underline,
          fontStyle: FontStyle.italic,
        ),
      ),
      // child should be last argument
    );
  }
}

// container
// wraps other widgets
// padding and margin added easily
// child argument introduced. Takes up a default space