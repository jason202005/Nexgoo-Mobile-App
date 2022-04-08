import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      // title: 'Welcome to Flutter',
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          // title: const Text('Welcome to Flutter'),
          title: const Text('Sport'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        ),
      ),
    );
  }
}