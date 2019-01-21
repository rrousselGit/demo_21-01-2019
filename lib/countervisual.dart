import 'package:flutter/material.dart';

class CounterVisual extends StatelessWidget {
  final int counter;
  final VoidCallback onPressed;

  const CounterVisual(this.counter, {Key key, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(counter.toString()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.blue,
            child: Text('+'),
            onPressed: onPressed,
          ),
        ),
      ],
    );
  }
}
