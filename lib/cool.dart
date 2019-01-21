part of "cool_base.dart";

Widget counter(BuildContext context, {Duration duration}) {
  final counter = useState(0);
  final counter2 = useState(0);
  final counter3 = useState(0);

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CounterVisual(
        counter.value,
        onPressed: () => counter.value += 100,
      ),
      CounterVisual(
        counter2.value,
        onPressed: () => counter2.value += 100,
      ),
      CounterVisual(
        counter3.value,
        onPressed: () => counter3.value += 100,
      ),
    ],
  );
}