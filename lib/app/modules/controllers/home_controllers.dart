import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  late PageController pageController;
  final int _currentPage = 0;

  @override
  void onInit() {
    pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void fetch() {}
}
