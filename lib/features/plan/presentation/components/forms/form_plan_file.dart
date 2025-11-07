import 'dart:io';

import 'package:feeed/features/shared/style/components/classic_form_field.dart';
import 'package:flutter/material.dart';

class FormPlanFile extends StatefulWidget {
  const FormPlanFile({super.key});

  @override
  State<FormPlanFile> createState() => FormPlanFileState();
}

class FormPlanFileState extends State<FormPlanFile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _image = '';

  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print(_image);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          ClassicFormField(
            label: "Adresse E-mail",
            placeholder: 'Abonnement 1 an Basic-Fit',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Le titre est obligatoire';
              }
              return null;
            },
            onChanged: (value) => _image = value!,
          ),
        ],
      ),
    );
  }
}
