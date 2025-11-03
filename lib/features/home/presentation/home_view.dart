import 'package:feeed/assets/colors.dart';
import 'package:feeed/assets/images.dart';
import 'package:feeed/features/shared/style/components/cta_button.dart';
import 'package:feeed/router/router.dart';
import 'package:flutter/material.dart';
import 'package:feeed/assets/typography.dart';
import 'package:feeed/example_view.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.bg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  'Home page',
                  style: CustomTextStyles.title.copyWith(
                    color: CustomColors.white,
                    height: 0,
                  ),
                ),

                // Image(image: AssetImage(CustomImages.hotel)),
              ],
            ),
            //Text(
            //_counter.toString(),
            // style: Theme.of(context).textTheme.headlineMedium,
            //),
          ],
        ),
      ),
    );
  }
}
