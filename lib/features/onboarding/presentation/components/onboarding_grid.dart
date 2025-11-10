import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/features/onboarding/presentation/components/onboarding_card.dart';
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
                    height: 300,
                    child: GridView.count(
                      shrinkWrap: true,
                      crossAxisCount: 2,
                      children: sublist.map((img) {
                        return OnboardingCard(
                          title: img.title,
                          subtitle: img.subtitle,
                          imagePath: img.imagePath,
                          imageLogo: img.imageLogo,
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
