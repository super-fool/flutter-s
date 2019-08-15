import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  const IndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('测试'),
        ),
        body: Center(
          child: Text('测试'),
        )
    );
  }
}
