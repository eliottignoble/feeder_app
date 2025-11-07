import 'package:feeed/features/shared/style/components/classic_form_field.dart';
import 'package:flutter/material.dart';

class FormPlanDescription extends StatefulWidget {
  const FormPlanDescription({super.key});

  @override
  State<FormPlanDescription> createState() => FormPlanDescriptionState();
}

class FormPlanDescriptionState extends State<FormPlanDescription> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  String _link = '';

  void submit() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      print(_title);
      print(_description);
      print(_link);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        spacing: 10,
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
            onChanged: (value) => _title = value!,
          ),
          ClassicFormField(
            label: "Description",
            placeholder: 'la description est obligatoir',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Votre adresse est obligatoire';
              }
              return null;
            },
            onChanged: (value) => _description = value!,
          ),
          ClassicFormField(
            label: "Lien",
            placeholder: 'www.lienverstonbonplan.com',
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Le lien est obligatoire';
              }
              return null;
            },
            onChanged: (value) => _link = value!,
          ),
        ],
      ),
    );
  }
}
