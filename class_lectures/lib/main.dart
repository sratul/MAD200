import 'package:class_lectures/panApp.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(PanApp());
}

class TapDetectorApp extends StatefulWidget {
  const TapDetectorApp({super.key});

  @override
  State<TapDetectorApp> createState() => _TapDetectorAppState();
}

class _TapDetectorAppState extends State<TapDetectorApp> {
  int tapCount = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tap Detector'),
        ),
        body: Center(
          child: GestureDetector(
            onDoubleTap: () {
              setState(() {
                tapCount++;
              });
            },
            child: Text('Tap Count: $tapCount', style: TextStyle(fontSize: 40)),
          ),
        ),
      ),
    );
  }
}
