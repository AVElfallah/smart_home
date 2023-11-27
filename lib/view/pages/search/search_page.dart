import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:smart_home/utils/app_assets.dart';
import 'package:smart_home/utils/app_colors.dart';
import 'package:smart_home/utils/app_router.dart';
import 'package:smart_home/view/pages/search/widgets/device_card.dart';
import 'package:smart_home/view/widgets/bottom_nav_bar.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: const Text(
          'Search',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        actions: const [
          Text(
            'Wi-Fi:tw1r_2.4G ',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
        elevation: 0,
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                '3 new devices found',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.95,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                children: [
                  DeviceCardWidget(
                    isEnabled: true,
                    deviceName: 'Bork V700',
                    deviceImage: AppAssets().borkImage,
                    deviceType: 'Vacuum Cleaner',
                  ),
                  DeviceCardWidget(
                    deviceName: 'Lifex LED',
                    deviceImage: AppAssets().lifexled,
                    deviceType: 'Smart Bulb',
                  ),
                  DeviceCardWidget(
                    deviceName: 'Xiaomi Dem',
                    deviceImage: AppAssets().xiaomiDem,
                    deviceType: 'Smart Bulb',
                  ),
                  DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(25),
                    color: Colors.grey,
                    dashPattern: const [3, 8],
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.containerColor,
                        borderRadius: BorderRadius.circular(
                          25,
                        ),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  AppAssets().wifiHome,
                                ),
                                fit: BoxFit.contain,
                              ),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          const Text(
                            'Not found device?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'select manually',
                            style: TextStyle(
                              color: AppColors.sliderColor,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.sliderColor,
                minimumSize: const Size(
                  double.infinity,
                  70,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    14,
                  ),
                ),
              ),
              child: const Text(
                'Add device',
                style: TextStyle(
                  color: AppColors.mainColor,
                  fontSize: 18,
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,
        onTap: (v) {
          if (v == 0) {
            Navigator.pushReplacementNamed(
              context,
              AppRouter.homeRoute,
            );
          }
        },
      ),
    );
  }
}
