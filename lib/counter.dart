import 'package:flutter/material.dart';
import 'package:flutter_demo/countervisual.dart';

class Counter extends StatefulWidget {
  const Counter({Key key, this.duration}) : super(key: key);

  final Duration duration;

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> with TickerProviderStateMixin {
  int counter = 0;
  int counter2 = 0;
  AnimationController animationController;
  AnimationController animationController2;
  Animation<int> animatedCounter = const AlwaysStoppedAnimation(0);
  Animation<int> animatedCounter2 = const AlwaysStoppedAnimation(0);

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: widget.duration,
      vsync: this,
    );
    animationController2 = AnimationController(
      duration: widget.duration * 2,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(Counter oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.duration != widget.duration) {
      animationController.duration = widget.duration;
      animationController2.duration = widget.duration * 2;
    }
  }

  @override
  void dispose() {
    animationController.dispose();
    animationController2.dispose();
    super.dispose();
  }

  void _increment() {
    setState(() {
      counter += 100;
      animatedCounter = IntTween(
        begin: animatedCounter.value,
        end: counter,
      ).animate(animationController);
    });
    animationController.forward(from: 0);
  }

  void _increment2() {
    setState(() {
      counter2 += 200;
      animatedCounter2 = IntTween(
        begin: animatedCounter2.value,
        end: counter2,
      ).animate(animationController2);
    });
    animationController2.forward(from: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedBuilder(
            animation: animatedCounter,
            builder: (context, _) {
              return CounterVisual(
                animatedCounter.value,
                onPressed: _increment,
              );
            }),
        AnimatedBuilder(
            animation: animatedCounter2,
            builder: (context, _) {
              return CounterVisual(
                animatedCounter2.value,
                onPressed: _increment2,
              );
            }),
        AnimatedBuilder(
          animation: animatedCounter,
          builder: (context, _) => AnimatedBuilder(
              animation: animatedCounter2,
              builder: (context, _) {
                return Text(
                    'Total: ${animatedCounter.value + animatedCounter2.value}');
              }),
        ),
      ],
    );
  }
}
