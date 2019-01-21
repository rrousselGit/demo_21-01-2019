import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part "gen.g.dart";

@hwidget
Widget helloWorld(int value) {
  final counter = useState(0);

  return Text('Hello ${counter.value}');
}
