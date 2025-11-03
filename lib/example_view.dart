import 'package:feeed/assets/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExampleView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGray,
      body: Center(child: Text("hello world")),
    );
  }
}
