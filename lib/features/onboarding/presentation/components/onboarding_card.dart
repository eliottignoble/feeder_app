import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:flutter/material.dart';

class CardsOnboarding extends StatefulWidget {
  const CardsOnboarding({
    super.key,
    required this.imagesChunked,
    required this.onSlideChanged,
  });

  final List<List> imagesChunked;
  final void Function(int) onSlideChanged;

  @override
  State<CardsOnboarding> createState() => _CardsOnboardingState();
}

class _CardsOnboardingState extends State<CardsOnboarding> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  @override
  // nettoyage du composant
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _controller,
      scrollDirection: Axis.horizontal,
      // page qui change
      onPageChanged: (index) {
        setState(() => index);
        // on renvoit au parent
        widget.onSlideChanged(index);
      },
      itemCount: widget.imagesChunked.length,
      itemBuilder: (context, index) {
        final sublist = widget.imagesChunked[index];
        return Container(
          alignment: Alignment.center,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              color: CustomColors.white,
              child: Column(
                children: [
                  SizedBox(
                    width: 300,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: sublist.map((img) {
                        return Column(
                          spacing: 10,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(7),
                                  child: Image.asset(
                                    img.imagePath,
                                    fit: BoxFit.cover,
                                    width: 120,
                                    height: 60,
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: CustomColors.white,
                                      width: 3,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      img.imageLogo,
                                      width: 20,
                                      height: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  img.title,
                                  style: CustomTextStyles.cardsOnboardingTitle,
                                  textAlign: TextAlign.start,
                                ),
                                Text(
                                  img.subtitle,
                                  style: CustomTextStyles
                                      .cardsOnboardingsDescription,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
