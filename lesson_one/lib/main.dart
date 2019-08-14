import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
      title: 'This is First Flutter App',
      // 以下所有widget都是及程序Material.
      home: Scaffold(
        // 导航栏
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        //
        body: Center(
          // child: Text('Hello World'),
          child: Text(wordPair.asPascalCase),
        ),
      ),
    );
  }


}