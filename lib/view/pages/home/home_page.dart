import 'package:flutter/material.dart';
import 'package:smart_home/utils/app_assets.dart';
import 'package:smart_home/utils/app_router.dart';
import 'package:smart_home/view/widgets/bottom_nav_bar.dart';

import '../../../utils/app_colors.dart';
import 'widgets/card_widget.dart';
import 'widgets/slider_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var mqSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.mainColor,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: mqSize.height * 0.5,
              width: mqSize.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    AppAssets().homeImage,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          //SECTION - Filter
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: mqSize.height * 0.5,
              width: mqSize.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.mainColor.withOpacity(0.1),
                    AppColors.mainColor.withOpacity(0.2),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),

          //SECTION - Header
          Align(
            alignment: Alignment.topCenter,
            child: SafeArea(
              child: SizedBox(
                height: 50,
                width: mqSize.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppAssets().back,
                        scale: .1,
                      ),
                    ),
                    const Text(
                      'BedRoom',
                      style: TextStyle(
                        color: AppColors.unselectedColor,
                        fontSize: 20,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppAssets().bell,
                        scale: .85,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          //SECTION - Items
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: mqSize.height * 0.285,
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,

                  //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CardWidget(
                      value: 36,
                      title: 'Humidifier \nAir',
                      assetsImageIcon: AppAssets().humidity,
                      isRunning: true,
                      subTitle: 'Mode 2',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CardWidget(
                      value: 73,
                      title: 'Purifier \nAir',
                      assetsImageIcon: AppAssets().clean,
                      isRunning: true,
                      subTitle: 'ON',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CardWidget(
                      value: 53,
                      title: 'Water',
                      assetsImageIcon: AppAssets().humidity,
                      isRunning: false,
                      subTitle: 'OFF',
                    ),
                  ],
                ),
              ),
            ),
          ),

          //SECTION - Sliders
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: mqSize.height * 0.25,
              width: mqSize.width,
              decoration: BoxDecoration(
                color: AppColors.containerColor,
                borderRadius: BorderRadius.circular(
                  25,
                ),
              ),
              padding: const EdgeInsets.all(16),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                children: [
                  SliderWidget(
                    title: 'Main Light',
                    assetsImageIcon: AppAssets().lamp,
                    value: 0.5,
                  ),
                  SliderWidget(
                    title: 'Floor Lamp',
                    assetsImageIcon: AppAssets().tablelamp,
                    value: 0.8,
                  ),
                  SliderWidget(
                    title: 'Floor Lamp 2',
                    assetsImageIcon: AppAssets().tablelamp,
                    value: 0.8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacementNamed(
              context,
              AppRouter.searchRoute,
            );
          }
        },
      ),
    );
  }
}
