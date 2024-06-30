// add this to include the libraries being used 
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key}); // ignore this for now

  // buildContext object gives information about the
  // location within the app
  @override
  Widget build(BuildContext context) {
    // either return a widget or widget tree
    // return const Placeholder(); // just a cross;
    // return const Text("Hello Again from the Stateless World");
    return Scaffold(
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
      // body: const Home(), // adding the stateless widget
    );
  }
}

// container
// wraps other widgets
// padding and margin added easily
// child argument introduced. Takes up a default space