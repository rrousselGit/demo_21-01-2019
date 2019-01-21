// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen.dart';

// **************************************************************************
// Generator: FunctionalWidget
// **************************************************************************

class HelloWorld extends HookWidget {
  const HelloWorld(this.value, {Key key}) : super(key: key);

  final int value;

  @override
  Widget build(BuildContext _context) => helloWorld(value);
  @override
  int get hashCode => value.hashCode;
  @override
  bool operator ==(Object o) =>
      identical(o, this) || (o is HelloWorld && value == o.value);
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('value', value));
  }
}
