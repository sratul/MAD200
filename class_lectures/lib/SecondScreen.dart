import 'package:flutter/material.dart';

class Secondscreen extends StatelessWidget {
  const Secondscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen", style: TextStyle(fontSize: 40)),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Go Back', style: TextStyle(fontSize: 40)))
        ],
      )),
    );
  }
}
