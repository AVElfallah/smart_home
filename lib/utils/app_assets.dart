import 'package:flutter/material.dart';

class AppAssets {
  AppAssets._() {
    // init things here
    debugPrint('AppAssets class init');
  }
  static final AppAssets _instance = AppAssets._();
  factory AppAssets() => _instance;

  //SECTION - images
  final String homeImage = 'assets/images/home_image.png';
  final String clean = 'assets/images/clean.png';
  final String humidity = 'assets/images/humidity.png';
  final String lamp = 'assets/images/lamp.png';
  final String tablelamp = 'assets/images/tablelamp.png';
  final String bell = 'assets/images/bell.png';
  final String back = 'assets/images/back.png';
  final String homeIcon = 'assets/images/home.png';
  final String searchIcon = 'assets/images/search.png';
  final String gridIcon = 'assets/images/grid.png';
  final String profileIcon = 'assets/images/profile.png';
  final String borkImage = 'assets/images/Bork.png';
  final String lifexled = 'assets/images/lifexled.png';
  final String xiaomiDem = 'assets/images/xiaomi_dem.png';
  final String wifiHome = 'assets/images/wifi_home.png';
}
