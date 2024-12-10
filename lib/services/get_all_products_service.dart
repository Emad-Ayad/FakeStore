import 'package:dio/dio.dart';
import 'package:fake_store/helper/api.dart';
import 'package:fake_store/models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List data = await Api().get(url: "https://fakestoreapi.com/products");

    List<ProductModel> productsList = [];

    for (var item in data) {
      productsList.add(ProductModel.fromJson(item)); // Convert map to ProductModel
    }
    return productsList;
  }
}
