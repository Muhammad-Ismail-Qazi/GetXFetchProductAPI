import 'dart:convert';
import 'package:get/get.dart';
import 'package:getx_fetch_product_api/apiModels/ProductModel.dart';
import 'package:http/http.dart' as http;

class ProductController extends GetxController {
  RxList<ProductModel> storeData = <ProductModel>[].obs;

  Future<List<ProductModel>> fetchApiData() async {
    try {
      final response = await http.get(Uri.parse(
          "https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie"));

      if (response.statusCode == 200) {
        var jsonDecodeData = jsonDecode(response.body);
        for(Map i in jsonDecodeData){
          storeData.add(ProductModel.fromJson(i));

        }
        return storeData;
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }

  }

  @override
  void onInit() {
    super.onInit();
    fetchApiData();
  }
}