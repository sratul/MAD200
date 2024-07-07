import 'dart:collection';

import 'package:flutter/material.dart';

import 'quote.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("Be yourself; everyone else is already taken.", "Oscar Wilde"),
    Quote(
        "To live is the rarest thing in the world. Most people exist, that is all.",
        "Oscar Wilde"),
    Quote("You can never be overdressed or overeducated.", "Oscar Wilde")
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              // Direct use of the value. "" and $ not needed
              // but you cannot do string operations as earlier
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }

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
        // for variables simply using $ is enough
        // but for properties we have to do the following
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
