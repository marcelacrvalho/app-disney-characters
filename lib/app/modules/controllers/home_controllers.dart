import 'package:disney/app/data/models/character.dart';
import 'package:disney/app/data/repositories/character_repositories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find<HomeController>();

  late PageController pageController;
  final int _currentPage = 0;
  final String imageNotFound = 'https://toppng.com/uploads/preview/disney-logo-11530965441h3dubhchrf.png';
  List<Character> ? listCharacters = [];

  @override
  void onInit() {
    pageController = PageController(
      initialPage: _currentPage,
      viewportFraction: 0.8,
    );
    fetch();
    super.onInit();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  Future fetch() async{
    var response = await CharacterRepository.fetch();
    response != null ? listCharacters = response : null;
    print(response);
  }
}
