import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/cupertino.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.lenghtChunkedImages});

  final int lenghtChunkedImages;

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  late int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.lenghtChunkedImages;
  }

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
