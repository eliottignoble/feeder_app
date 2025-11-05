import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/auth/components/forms/login/login_form.dart';
import 'package:feeed/router/router.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.lightGray,
      body: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text("BIENVENUE", style: CustomTextStyles.title),
              Text(
                "Inscris-toi pour avoir les meilleurs plans étudiants !",
                style: CustomTextStyles.subtitle,
              ),
            ],
          ),
          //forms
          Column(children: [LoginForm(formKey: _formKey)]),
          CtaButton(
            text: "SE CONNECTER",
            backgroundColor: CustomColors.bg,
            onPressed: () {
              //context.go(AppScreens.home.toPath);
            },
          ),
        ],
      ),
    );
  }
}
