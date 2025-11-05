import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/cupertino.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CtaButton(text: "$_counter", onPressed: (() => _increment()));
  }
}
