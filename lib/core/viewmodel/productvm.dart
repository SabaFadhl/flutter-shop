import 'package:dio/dio.dart';
import 'package:flutter_shop/core/model/product.dart';
import 'package:flutter/foundation.dart';

class ProductVM{
  List<Product> _allProducts=[];
  Future<List<Product>> getAllProducts() async {
    Dio dio=new Dio();
    Response res = await dio.get('https://dummyjson.com/products');
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