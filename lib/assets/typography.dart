import 'package:flutter/material.dart';

class CustomTextStyles {
  static const String inter = 'inter';
  static const String integral = 'integral';

  static const TextStyle title = TextStyle(
    fontFamily: integral,
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
  );

  static const TextStyle heading1 = TextStyle(
    fontFamily: inter,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle baseInter = TextStyle(
    fontFamily: inter,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}
