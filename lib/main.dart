import 'package:flutter/material.dart';
import 'package:flutter_demo/cool_base.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 40, color: Colors.black),
          child: Counter(const Duration(seconds: 1)),
        ),
      ),
    );
  }
}
