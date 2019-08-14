import 'package:flutter/material.dart';

void main() => runApp();

class MyApp extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
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
          child: Text('Hello World'),
        ),
      ),
    );
  }


}