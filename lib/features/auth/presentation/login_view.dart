import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';

import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:go_router/go_router.dart';
import '../components/forms/login/login_form.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

  final _loginFormKey = GlobalKey<LoginFormState>();

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
              Text("TE REVOILà !", style: CustomTextStyles.title),
              Text(
                "Reviens vite pour profiter des bons plans",
                style: CustomTextStyles.subtitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          //forms
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              spacing: 20,
              children: [
                LoginForm(key: _loginFormKey),
                Text(
                  "Mot de passe oublié ?",
                  style: CustomTextStyles.baseInter,
                  textAlign: TextAlign.end,
                ),
                CtaButton(
                  text: "SE CONNECTER",
                  backgroundColor: CustomColors.bg,
                  onPressed: () {
                    _loginFormKey.currentState?.submit();
                    context.go(AppScreens.home.toPath);
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 5,
            children: [
              Text("Pas encore inscrit ?", textAlign: TextAlign.center),
              InkWell(
                onTap: () => context.go(AppScreens.login.toPath),
                child: Text(
                  "Allez viens!",
                  style: CustomTextStyles.link.copyWith(color: CustomColors.bg),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
