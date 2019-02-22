import 'package:flutter/material.dart';

class Ex3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: MyScoffold(),
    );
  }
}

class MyScoffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.account_balance),
          onPressed: null,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.security),
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text(
          'Helloj',
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: null,
        foregroundColor: Color(0xff0000ff),
        backgroundColor: Color(0x9f3daa33)
        // foregroundColor: Color.lerp(a, b, t),
      ),
    );
  }
}
