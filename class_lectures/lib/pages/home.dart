import 'package:flutter/material.dart';

// Stateful Widget Home that links to the State Object HomeState
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

// State object HomeState
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Since we are not using any AppBar widget
      body: SafeArea(child: Text("Home Screen")),
    );
  }
}
