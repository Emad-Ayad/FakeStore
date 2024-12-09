import 'package:dio/dio.dart';
import 'package:fake_store/helper/api.dart';
import 'package:fake_store/models/product_model.dart';

class GetAllProducts {
  Future<List<ProductModel>> getAllProducts() async {
    List data = await Api().get(url: "https://fakestoreapi.com/products");

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(data[i]);
    }
    return productsList;
  }
}
