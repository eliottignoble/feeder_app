import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/images.dart';
import 'package:flutter/material.dart';

class CommentaryCardPlan extends StatelessWidget {
  const CommentaryCardPlan({
    super.key,
    required this.name,
    required this.image,
    required this.text,
  });

  final String image;
  final String name;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: CustomColors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: Image.asset(image, width: 29, height: 29),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [Text("Proposé par"), Text(name)],
                ),
                const Spacer(),
                Row(
                  children: List.generate(
                    5,
                    (index) =>
                        Icon(Icons.star, color: CustomColors.yellow, size: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: text,
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: "giga MAXI TACOS",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: " à des",
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: " giga BAS PRIX",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: ". Ca se passe maintenant !",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
