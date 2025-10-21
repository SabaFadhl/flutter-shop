import 'package:dio/dio.dart';
import 'package:flutter_shop/core/constants/api_routes.dart';
import 'package:flutter_shop/core/model/product.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_shop/helpers/http_helper.dart';

class ProductVM{
  List<Product> _allProducts=[];
  Future<List<Product>> getAllProducts() async {
    // Dio dio=new Dio();
    // Response res = await dio.get('https://dummyjson.com/products');
    HttpHelper http = HttpHelper.getInstance;
    Response res = await http.getRequest(url: ApiRoutes.PRODUCTS_PAGE);
    try{
      if(res.statusCode==200){
        List<dynamic> apiProducts =res.data["products"];
        apiProducts.forEach((item){
          _allProducts.add(Product.fromMap(item));
        });
        return _allProducts;

      }
      return[];
    }
    catch(e){
      debugPrint(e as String?);
    return[];
    }
  }
}