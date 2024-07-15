import 'package:flutter/material.dart';

class PanApp extends StatefulWidget {
  const PanApp({super.key});

  @override
  State<PanApp> createState() => _PanAppState();
}

class _PanAppState extends State<PanApp> {
  Offset position = const Offset(0.0, 0.0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Pan Detector"),
        ),
        body: GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              position += details.delta;
            });
          },
          child: Stack(
            children: [
              Positioned(
                left: position.dx,
                top: position.dy,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
