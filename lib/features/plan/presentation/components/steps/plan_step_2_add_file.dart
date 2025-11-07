import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/plan/presentation/components/forms/form_plan_description.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class PlanStep2AddFile extends StatefulWidget {
  const PlanStep2AddFile({
    super.key,
    required this.pickedImage,
    required this.pickImageFile,
  });

  final PlatformFile? pickedImage;
  final void Function() pickImageFile;

  @override
  State<PlanStep2AddFile> createState() => _PlanStep2AddFileState();
}

class _PlanStep2AddFileState extends State<PlanStep2AddFile> {
  final _planFormKey = GlobalKey<FormPlanDescriptionState>();

  //Gestion des images
  PlatformFile? _pickedImage;

  Future<void> _pickImageFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: false,
    );

    if (result == null) {
      // utilisateur a annulé
      return;
    }

    setState(() {
      _pickedImage = result.files.first;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 50, left: 32, right: 32),
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        spacing: 20,
        children: [
          Column(
            children: [
              Column(
                spacing: 20,
                children: [
                  Text("Photo du bon plan", style: CustomTextStyles.h3),
                  CtaButton(
                    width: 174,
                    height: 174,
                    text: "+",
                    backgroundColor: CustomColors.bg,
                    onPressed: widget.pickImageFile,
                  ),
                ],
              ),
            ],
          ),
          if (widget.pickedImage != null) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.file(
                File(widget.pickedImage!.path!),
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ],

          CtaButton(
            text: "AJOUTER CE BON PLAN",
            backgroundColor: CustomColors.bg,
            onPressed: () => _planFormKey.currentState?.submit(),
          ),
        ],
      ),
    );
  }
}
