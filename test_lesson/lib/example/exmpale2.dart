import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 40.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          new IconButton(
            icon: new Icon(Icons.menu),
            tooltip: "Navigation menu",
            onPressed: null,
          ),
          new Expanded(
            child: title,
          ),
          new IconButton(
            icon: new Icon(Icons.search),
            tooltip: "Search",
            onPressed: null,
          )
        ],
      ),
    );
  }
}

class MyScoffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
              title: Center(
            child: Text(
              'Example Title',
              style: Theme.of(context).primaryTextTheme.headline,
            ),
          )),
          new Expanded(
            child: new Center(
              child: new Text("Hello Low Low"),
            ),
          )
        ],
      ),
    );
  }
}

class Ex2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      home: MyScoffold(),
    );
  }
}
