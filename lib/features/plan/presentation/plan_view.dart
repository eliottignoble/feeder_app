import 'package:feeed/assets/colors.dart';
import 'package:feeed/features/plan/presentation/components/plan_header.dart';
import 'package:feeed/features/plan/presentation/components/steps/plan_step_1_add_description.dart';
import 'package:feeed/features/plan/presentation/components/steps/plan_step_2_add_file.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class PlanView extends StatefulWidget {
  const PlanView({super.key});

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView> {
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

  // gestion de l'index
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final page = _controller.page?.round() ?? 0;
      if (page != _currentPage) {
        setState(() {
          _currentPage = page;
        });
      }
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
                        children: List.generate(2, (index) {
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            height: 7,
                            width: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: _currentPage == index
                                  ? CustomColors.bg
                                  : CustomColors.greyIcon,
                            ),
                          );
                        }),
                      ),

                      Expanded(
                        child: PageView(
                          //desactive le scroll manuel
                          physics: NeverScrollableScrollPhysics(),
                          controller: _controller,
                          children: [
                            //1ere slide
                            PlanStep1AddDescription(controller: _controller),
                            //2meme slide
                            PlanStep2AddFile(
                              pickedImage: _pickedImage,
                              pickImageFile: _pickImageFile,
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
