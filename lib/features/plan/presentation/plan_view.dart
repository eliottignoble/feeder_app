import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/plan/presentation/components/forms/form_plan_description.dart';
import 'package:feeed/features/plan/presentation/components/forms/form_plan_file.dart';
import 'package:feeed/features/plan/presentation/components/plan_header.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:io';

class PlanView extends StatefulWidget {
  const PlanView({super.key});

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
  final _planFormKey = GlobalKey<FormPlanDescriptionState>();
  final PageController _controller = PageController();

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
  // nettoyage du composant
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: Column(
        spacing: 40,
        children: [
          PlanHeader(),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
              child: Container(
                color: CustomColors.greyIconContainer,
                width: double.maxFinite,
                child: Container(
                  padding: EdgeInsets.only(top: 32, bottom: 50),
                  child: Column(
                    spacing: 20,
                    children: [
                      // 2 div
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 10,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.greyIcon,
                            ),
                            height: 7,
                            width: 46,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: CustomColors.greyIcon,
                            ),
                            height: 7,
                            width: 46,
                          ),
                        ],
                      ),

                      Expanded(
                        child: PageView(
                          //desactive le scroll manuel
                          physics: NeverScrollableScrollPhysics(),
                          controller: _controller,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 32,
                                vertical: 50,
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                spacing: 20,
                                children: [
                                  FormPlanDescription(key: _planFormKey),
                                  CtaButton(
                                    text: "SUIVANT",
                                    backgroundColor: CustomColors.bg,
                                    onPressed: () => {
                                      _planFormKey.currentState?.submit(),
                                      _controller.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.easeIn,
                                      ),
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                top: 32,
                                bottom: 50,
                                left: 32,
                                right: 32,
                              ),
                              width: double.infinity,
                              height: double.infinity,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                spacing: 20,
                                children: [
                                  Column(
                                    children: [
                                      Column(
                                        spacing: 20,
                                        children: [
                                          Text(
                                            "Photo du bon plan",
                                            style: CustomTextStyles.h3,
                                          ),
                                          CtaButton(
                                            width: 174,
                                            height: 174,
                                            text: "+",
                                            backgroundColor: CustomColors.bg,
                                            onPressed: _pickImageFile,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  if (_pickedImage != null) ...[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.file(
                                        File(_pickedImage!.path!),
                                        fit: BoxFit.cover,
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ],
                                  CtaButton(
                                    text: "AJOUTER CE BON PLAN",
                                    backgroundColor: CustomColors.bg,
                                    onPressed: () =>
                                        _planFormKey.currentState?.submit(),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
