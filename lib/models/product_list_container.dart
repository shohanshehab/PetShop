import 'package:flutter/material.dart';
import 'package:pet_shop/models/products.dart';

import '../constants.dart';

class ProductsListContainer extends StatelessWidget {
  const ProductsListContainer({
    Key? key,
    required this.products,
    required this.press,
  }) : super(key: key);
  final Product products;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: press,
            child: Container(
              //height: 180,
              //width: 160,
              decoration: BoxDecoration(
                  color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
              child: Image.asset(products.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              products.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Text(
            '\$${products.price}',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
