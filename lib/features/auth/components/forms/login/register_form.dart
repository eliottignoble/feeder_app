import 'package:feeed/features/shared/style/components/classic_form_field.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';
  String _confirmPassword = '';

  //creation de la fonction submit
  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print(_email);
      print(_password);
      print(_confirmPassword);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 20,
        children: [
          ClassicFormField(
            label: "Adresse E-mail",
            placeholder: 'ton adresse e-mail',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Votre adresse est obligatoire';
              }
              if (!value.contains('@')) {
                return 'Il manque le @ dans votre adresse email';
              }
              return null;
            },
            onChanged: (value) => _email = value!,
          ),
          ClassicFormField(
            label: "Password",
            placeholder: 'Ton mot de passe',
            typePassword: true,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'votre mot de passe est obigatoire';
              }
              return null;
            },
            onChanged: (value) => _password = value!,
          ),
          ClassicFormField(
            label: "Confirm password",
            placeholder: 'Confirme ton mot de passe',
            typePassword: true,
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'votre mot de passe est obigatoire';
              }
              return null;
            },
            onChanged: (value) => _confirmPassword = value!,
          ),
        ],
      ),
    );
  }
}
