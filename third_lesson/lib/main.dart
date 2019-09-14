import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(text: 'Hello', style: TextStyle(
              fontSize: 21.0
            )),
            TextSpan(text: 'Flutter', style: TextStyle(
              fontSize: 24.0
            ))
          ]
        ),
        textDirection: TextDirection.ltr,
      )
    );
  }
}