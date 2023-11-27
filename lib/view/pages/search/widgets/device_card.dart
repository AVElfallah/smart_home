import 'package:flutter/material.dart';
import 'package:smart_home/utils/app_assets.dart';

import '../../../../utils/app_colors.dart';

class DeviceCardWidget extends StatelessWidget {
  const DeviceCardWidget({
    super.key,
    this.isEnabled = false,
    this.deviceName,
    this.deviceImage,
    this.deviceType,
    this.onTap,
  });
  final bool? isEnabled;
  final String? deviceName;
  final String? deviceImage;
  final String? deviceType;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          border: isEnabled!
              ? Border.all(
                  color: AppColors.sliderColor,
                  width: .4,
                )
              : null,
          borderRadius: BorderRadius.circular(
            25,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    deviceImage ?? AppAssets().borkImage,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              height: 100,
              width: 80,
            ),
            Text(
              deviceName ?? 'no name',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              deviceType ?? 'Vacuum Cleaner',
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
