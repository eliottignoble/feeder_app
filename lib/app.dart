import 'package:flutter/material.dart';
import 'package:feeed/router/router.dart';

class MyApp extends StatelessWidget {
  final NavigationRouter navigationRouter;

  const MyApp({super.key, required this.navigationRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: navigationRouter.router);
  }
}
