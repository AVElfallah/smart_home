import 'package:flutter/material.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    this.value,
    this.isRunning,
    this.assetsImageIcon,
    this.title,
    this.subTitle,
  });
  final double? value;
  final bool? isRunning;
  final String? assetsImageIcon;
  final String? title;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    final mqSize = MediaQuery.of(context).size;
    ValueNotifier<bool> isSwitched = ValueNotifier<bool>(isRunning ?? false);
    return Container(
      height: mqSize.height * 0.28,
      width: mqSize.width * 0.48,
      decoration: BoxDecoration(
        color: AppColors.containerColor,
        borderRadius: BorderRadius.circular(
          25,
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${value?.toInt() ?? 0}%',
                style: const TextStyle(
                  color: AppColors.unselectedColor,
                  fontSize: 40,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                assetsImageIcon ?? AppAssets().humidity,
                color: Colors.white,
                scale: .8,
              ),
              const SizedBox(
                width: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title ?? 'Title',
            style: TextStyle(
              color: AppColors.unselectedColor.withOpacity(
                .6,
              ),
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Divider(
            color: AppColors.unselectedColor.withOpacity(
              .6,
            ),
          ),
          ValueListenableBuilder(
            valueListenable: isSwitched,
            builder: (
              BuildContext context,
              bool value,
              Widget? child,
            ) {
              return SwitchListTile.adaptive(
                value: value,
                onChanged: (v) {
                  isSwitched.value = v;
                },
                thumbColor: MaterialStateProperty.all(
                  Colors.brown.shade900,
                ),
                trackColor: MaterialStateProperty.all(
                  const Color(0xffFFB267),
                ),
                inactiveTrackColor: Colors.brown.shade900,
                inactiveThumbColor: const Color(0xffFFB267),
                title: Text(
                  subTitle ?? 'SubTitle',
                  style: TextStyle(
                    color: AppColors.unselectedColor.withOpacity(
                      .6,
                    ),
                    fontSize: 14,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
