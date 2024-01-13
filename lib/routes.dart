import 'package:get/get.dart';
import 'package:getx_fetch_product_api/views/home.dart';
import 'package:getx_fetch_product_api/views/splashScreen.dart';

class AllRoutes {
  static List<GetPage> routes = [
    GetPage(
      name: '/splashScreen',
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(name: '/home', page: () =>  Home()),
  ];
}