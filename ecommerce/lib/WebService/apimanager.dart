import 'dart:convert';
import 'package:ecommerce/Model/productmodel.dart';
import 'package:http/http.dart' as http;

class ApiModel {
  Future<List<ProductModel>> fetchProducts() async {
    const url = "https://fakestoreapi.com/products";
    //final response = await http.get(url);
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      final Iterable json = body;
      return json.map((products) => ProductModel.fromJson(products)).toList();
    } else {
      throw Exception("Unable to perform request!");
    }
  }
}
