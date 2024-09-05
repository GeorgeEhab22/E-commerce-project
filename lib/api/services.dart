import 'package:dio/dio.dart';
<<<<<<< HEAD
import 'package:e_commerce/models/products_model.dart';

class Services {
  Dio dio = Dio();
  Future<List<ProductModel>> getData({required String path}) async {
    Response response = await dio.get(path);
    Map<dynamic, dynamic> jsonData = response.data;
    List<dynamic> products = jsonData["products"];
    List<ProductModel> productsList = [];
    for (var product in products) {
      productsList.add(ProductModel.fromjson(product));
    }
    return productsList;
  }
}
=======
import 'package:e_commerce/api/products.dart';
class Services {
  Dio dio = Dio();
  Future<List<Products>> getData(
      {required String path}) async {
    Response response = await dio.get(path);
     Map<dynamic, dynamic> jsonData = response.data;
    List<dynamic> products = jsonData["products"];
    List<Products> productsList = [];
    for (var product in products) {
      productsList.add(Products.fromjson(product));
    }
    return productsList;
  }
  }
>>>>>>> e763aa1457bfd7182f6d678d543f79ef13ce4d16
