import 'package:flutter/foundation.dart';

class Products{
  String? title;
  String? brand;
  String? images;

  Products({this.title , this.brand , this.images});

  factory Products.fromjson(Map<String , dynamic> json){
    return Products(
      title: json["title"]?? "",
      brand: json["brand"]?? "",
      images: json["images"][0] ?? "",
    );
  }
}