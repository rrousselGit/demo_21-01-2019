import 'package:flutter/material.dart';
import 'package:flutter_demo/countervisual.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';

part 'full.g.dart';

@hwidget
Widget counter({Duration duration}) {
  final counter = useState(0);
  final counter2 = useState(0);

  final animatedCounter =
      useAnimation(useAnimatedInt(counter.value, duration: duration));
  final animatedCounter2 =
      useAnimation(useAnimatedInt(counter2.value, duration: duration * 2));

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CounterVisual(
        animatedCounter,
        onPressed: () => counter.value += 100,
      ),
      CounterVisual(
        animatedCounter2,
        onPressed: () => counter2.value += 200,
      ),
      Text('Total: ${animatedCounter + animatedCounter2}'),
    ],
  );
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
