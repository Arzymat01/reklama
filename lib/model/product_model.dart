// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Product {
  const Product({
    this.images,
    required this.title,
    required this.description,
    required this.datetime,
    required this.phoneNumber,
    required this.userName,
    required this.adress,
    this.price,
  });
  final List<String>? images;
  final String title;
  final String description;
  final String datetime;
  final String phoneNumber;
  final String userName;
  final String adress;
  final String? price;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'images': images,
      'title': title,
      'description': description,
      'datetime': datetime,
      'phoneNumber': phoneNumber,
      'userName': userName,
      'adress': adress,
      'price': price,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      images: map['images'] != null
          ? List<String>.from((map['images'] as List<String>))
          : null,
      title: map['title'] as String,
      description: map['description'] as String,
      datetime: map['datetime'] as String,
      phoneNumber: map['phoneNumber'] as String,
      userName: map['userName'] as String,
      adress: map['adress'] as String,
      price: map['price'] != null ? map['price'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
