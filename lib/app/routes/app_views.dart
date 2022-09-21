import 'package:disney/app/modules/bindings/home_bindings.dart';
import 'package:disney/app/modules/views/home_views.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
  GetPage(
  name: Routes.kHome,
  page: () => const HomeView(),
  binding: HomeBinding(),
  ),
  ];
}