import 'package:flutter/material.dart';

import '../../../../utils/app_assets.dart';
import '../../../../utils/app_colors.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    super.key,
    this.title,
    this.value,
    this.assetsImageIcon,
  });

  final String? title;
  final double? value;
  final String? assetsImageIcon;

  @override
  Widget build(BuildContext context) {
    final mqSize = MediaQuery.of(context).size;
    ValueNotifier<double> sliderValue = ValueNotifier<double>(value ?? 0);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title ?? 'No Title',
            style: TextStyle(
              color: AppColors.unselectedColor.withOpacity(.7),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: mqSize.width * 0.77,
              child: ValueListenableBuilder(
                valueListenable: sliderValue,
                builder: (BuildContext context, double value, Widget? child) {
                  return Slider.adaptive(
                    value: value,
                    onChanged: (c) {
                      sliderValue.value = c;
                    },
                    activeColor: AppColors.sliderColor,
                    thumbColor: Colors.white,
                    inactiveColor: AppColors.unselectedColor.withOpacity(
                      .2,
                    ),
                  );
                },
              ),
            ),
            ValueListenableBuilder(
              valueListenable: sliderValue,
              builder: (BuildContext context, double value, Widget? child) {
                return Image.asset(
                  assetsImageIcon ?? AppAssets().lamp,
                  color: Colors.white.withOpacity(value),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
