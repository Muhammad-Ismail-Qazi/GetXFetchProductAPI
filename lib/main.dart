import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_product_api/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: AllRoutes.routes,
    );
  }
}