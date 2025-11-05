import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key, required this.formKey});

  final GlobalKey<FormState> formKey;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  //crea fonction submit
  void submit() {
    print(_email);
    print(_password);
    print(_confirmPassword);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Ton adresse email'),
              keyboardType: TextInputType.text,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'votre adresse est manquante';
                }
                return null;
              },
              onSaved: (value) => _email = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(hintText: 'Ton mot de passe'),
              obscureText: true,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'votre adresse est manquante';
                }
                return null;
              },
              onSaved: (value) => _password = value!,
            ),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Confirme ton mot de passe',
              ),
              obscureText: true,
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'votre adresse est manquante';
                }
                return null;
              },
              onSaved: (value) => _confirmPassword = value!,
            ),
          ],
        ),
      ),
    );
  }
}
