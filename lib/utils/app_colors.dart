import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static final AppColors _instance = AppColors._();
  factory AppColors() => _instance;

  //SECTION - colors
  static const mainColor = Color(0xff211D1D);
  static const secondaryColor = Color(0xff393535);
  static const containerColor = Color(0xff282424);
  static const selectedColor = Color.fromARGB(255, 255, 181, 106);
  static const unselectedColor = Color(0xffF8F8F8);
  static const sliderColor = Color(0xffFFA64D);
}
