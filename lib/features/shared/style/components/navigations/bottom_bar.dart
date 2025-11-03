import 'package:feeed/router/screen_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:feeed/assets/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.25),
            blurRadius: 35,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      height: 78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildNavItem(0, Icons.home_filled, Icons.home_filled),
          SizedBox(width: 10),
          _buildNavItem(1, Icons.add_circle, Icons.add_circle),
          SizedBox(width: 10),
          _buildNavItem(2, Icons.person, Icons.person),
        ],
      ),
    );
  }

  Widget _buildNavItem(int index, IconData icon, IconData selectedIcon) {
    final isSelected = currentPageIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() => currentPageIndex = index);
        switch (index) {
          case 0:
            context.go(AppScreens.home.toPath);
            break;
          case 1:
            context.go(AppScreens.addPlan.toPath);
            break;
          case 2:
            context.go(AppScreens.profile.toPath);
            break;
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: CustomColors.greyIconContainer,
        ),
        width: 49,
        height: 49,
        child: Icon(
          isSelected ? selectedIcon : icon,
          color: isSelected ? CustomColors.bg : CustomColors.greyIcon,
          size: 26,
        ),
      ),
    );
  }
}
