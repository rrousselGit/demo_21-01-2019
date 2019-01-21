import 'package:flutter/material.dart';
import 'package:flutter_demo/countervisual.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

part "cool.dart";

class Counter extends HookWidget {
  final Duration duration;

  Counter(this.duration);

  @override
  Widget build(BuildContext context) {
    return counter(context, duration: duration);
  }
}

Animation<int> useAnimatedInt(int counter, {Duration duration}) {
  final animationController = useAnimationController(duration: duration);

  return useValueChanged(counter, (prevCounter, prevAnim) {
        final previousValue = prevAnim?.value ?? prevCounter;
        animationController.forward(from: 0);
        return IntTween(
          begin: previousValue,
          end: counter,
        ).animate(animationController);
      }) ??
      AlwaysStoppedAnimation(counter);
}
