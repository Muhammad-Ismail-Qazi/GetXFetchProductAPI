import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_fetch_product_api/controllers/productController.dart';

class Home extends StatelessWidget {
  final productController = Get.put(ProductController());

  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Product API")),
      ),
      body: Obx(() {
        if (productController.storeData.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return ListView.builder(
            itemCount: productController.storeData.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(productController.storeData[index].brand.toString()),
                  Text(productController.storeData[index].name.toString()),
                  Text(productController.storeData[index].price.toString()),
                  Text(productController.storeData[index].category.toString()),
                  Text(productController.storeData[index].createdAt.toString()),

                ],
              );
            },
          );
        }
      }),
    );
  }
}