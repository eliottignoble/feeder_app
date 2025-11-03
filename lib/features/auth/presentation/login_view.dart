import 'package:feeed/router/router.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("login view"),
            CtaButton(
              text: "C'est parti !",
              onPressed: () {
                context.go(AppScreens.home.toPath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
