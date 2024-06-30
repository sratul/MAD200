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

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.blueGrey[400],
      ),
      // Children Define the column width
      // Here the largest container: green
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.red[100],
            child: Text("One"),
          ),
          Container(
            width: 200,
            color: Colors.blue,
            child: Text("Two"),
          ),
          Container(
            width: 300,
            color: Colors.green,
            child: Text("Three"),
          )
        ],
      ),
    );
  }
}
