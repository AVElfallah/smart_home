import 'package:flutter/material.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'bottomNavBar',
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        backgroundColor: AppColors.mainColor,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColors.selectedColor,
        unselectedItemColor: AppColors.unselectedColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets().homeIcon,
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              AppAssets().homeIcon,
              height: 30,
              width: 30,
              color: AppColors.selectedColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets().searchIcon,
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              AppAssets().searchIcon,
              height: 30,
              width: 30,
              color: AppColors.selectedColor,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets().gridIcon,
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              AppAssets().gridIcon,
              height: 30,
              width: 30,
              color: AppColors.selectedColor,
            ),
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              AppAssets().profileIcon,
              height: 30,
              width: 30,
            ),
            activeIcon: Image.asset(
              AppAssets().profileIcon,
              height: 30,
              width: 30,
              color: AppColors.selectedColor,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
