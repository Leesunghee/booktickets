import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppLayout {
  static Size getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }
  static double getScreenHeight() {
    return Get.height;
  }
  static double getScreenWidth() {
    return Get.width;
  }
  static double getHeight(double pixels) {
    double x = getScreenHeight() / pixels; //844/200=>4.22
    return getScreenHeight() / x;
  }
  static double getWidth(double pixels) {
    double x = getScreenWidth() / pixels; //844/200=>4.22
    return getScreenWidth() / x;
  }
}