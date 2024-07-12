import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  const ListViewApp({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<String>.generate(50, (i) => 'Item ${i + 1}');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('List View Demo'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
