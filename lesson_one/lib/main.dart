import 'package:flutter/material.dart';
import './pages//index_page.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        title: '测试',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amberAccent,
        ),
        home: IndexPage(),
      ),
    );
  }
}