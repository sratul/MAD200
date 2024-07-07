import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    "We are made to persist. That's how we find out who we are. ",
    "My home is not a place, it is people. ",
    "Bad habits are like a comfortable bed, easy to get into, but hard to get out of."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes of the Ages"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        // maps - cycles thru a list of data
        // for each item it will perform a function
        // Children properties expect a list
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
