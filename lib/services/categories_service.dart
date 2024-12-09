import 'package:fake_store/helper/api.dart';

import '../models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getAllProducts(
      {required String categoryName}) async {
    List data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");

    List<ProductModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(data[i]);
    }
    return productsList;
  }
}
