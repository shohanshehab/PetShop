import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Bird",
    price: 1200,
    description: dummydisc,
    image: "assets/images/bird1.jpg",
  ),
  Product(
    id: 2,
    title: "Cute Bird",
    price: 1200,
    description: dummydisc,
    image: "assets/images/bird2.jpeg",
  ),
  Product(
    id: 3,
    title: "cat",
    price: 1200,
    description: dummydisc,
    image: "assets/images/cat1.jpeg",
  ),
  Product(
    id: 4,
    title: "Cute cat",
    price: 1200,
    description: dummydisc,
    image: "assets/images/cat2.jpeg",
  ),
];
String dummydisc = "gfghfhgjjh";
