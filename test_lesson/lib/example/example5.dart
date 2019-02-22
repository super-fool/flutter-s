import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});
  final int count;

  @override
  Widget build(BuildContext cont) {
    return Text('Count: $count');
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onPressed});
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext cont) {
    return RaisedButton(
      onPressed: onPressed,
      child: Text('Increment'),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext cont) {
    return Row(
      children: <Widget>[
        CounterIncrementor(
          onPressed: _increment,
        ),
        CounterDisplay(
          count: _counter,
        ),
      ],
    );
  }
}
