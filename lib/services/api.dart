import 'dart:convert';
import 'package:api_try/model/Peoducts.dart';
import 'package:http/http.dart' as http;

class Api {
  String link = "https://dummyjson.com/products";

  Future<List<Products>> getData() async{
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var resault = jsonDecode(response.body);
    
    List<Products> productsList = [];
    for(var item in resault["products"]){
      Products p1 = Products.fromjson(item);
      productsList.add(p1);
      
    }
    return productsList;
  }
}

