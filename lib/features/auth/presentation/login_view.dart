import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/auth/components/forms/login/login_form.dart';
import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:go_router/go_router.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  
  final GlobalKey<LoginFormState> _loginFormKey = GlobalKey<LoginFormState>();

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
                  "En t’inscrivant, tu acceptes les Conditions générales d’utilisation de Padsou",
                  style: CustomTextStyles.baseInter,
                ),
                CtaButton(
                  text: "SE CONNECTER",
                  backgroundColor: CustomColors.bg,
                  onPressed: () {
                    _loginFormKey.currentState?.submit();
                    //context.go(AppScreens.home.toPath);
                  },
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text("Déjà un compte ?", textAlign: TextAlign.center),
              InkWell(
                onTap: () => context.go(AppScreens.login.toPath),
                child: Text("Déjà un compte ?", textAlign: TextAlign.center),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
