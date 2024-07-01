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
        title: Text("HELLO SCREEN"),
        backgroundColor: Colors.amber[200],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            color: Colors.brown[300],
            alignment: Alignment.center,
            child: const Text("One"),
          ),
          Container(
            height: 200,
            color: Colors.red[300],
            alignment: Alignment.center,
            child: const Text("TWO"),
          ),
          Container(
            height: 300,
            color: Colors.blue[300],
            alignment: Alignment.center,
            child: const Text("THREE"),
          ),
        ],
      ),
    );
  }
}
