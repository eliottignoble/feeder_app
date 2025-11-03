import 'package:feeed/features/shared/style/components/navigations/bottom_bar.dart';
import 'package:flutter/material.dart';

class BottomBarShell extends StatelessWidget {
  final Widget child;

  const BottomBarShell({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.25),
              blurRadius: 35,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          // 👇 ton composant existant est simplement injecté ici
          child: const BottomBar(),
        ),
      ),
    );
  }
}
