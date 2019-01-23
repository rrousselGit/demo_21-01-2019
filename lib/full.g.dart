// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'full.dart';

// **************************************************************************
// Generator: FunctionalWidget
// **************************************************************************

class Counter extends HookWidget {
  const Counter({Key key, this.duration}) : super(key: key);

  final Duration duration;

  @override
  Widget build(BuildContext _context) => counter(duration: duration);
  @override
  int get hashCode => duration.hashCode;
  @override
  bool operator ==(Object o) =>
      identical(o, this) || (o is Counter && duration == o.duration);
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<Duration>('duration', duration));
  }
}
