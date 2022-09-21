import 'package:disney/app/data/repositories/character_repositories.dart';
import 'package:disney/app/modules/controllers/home_controllers.dart';
import 'package:get/get.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => CharacterRepository());
  }
}