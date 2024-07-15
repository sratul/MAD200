import 'package:flutter/material.dart';

void main() {
  runApp(TapDetectorApp());
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
            onTap: () {
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
