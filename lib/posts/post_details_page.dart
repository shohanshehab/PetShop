import 'package:flutter/material.dart';
import 'package:pet_shop/constants.dart';
import 'package:pet_shop/models/products.dart';

import 'detail_post_body.dart';

class PostDetailpage extends StatelessWidget {
  final Product product;

  const PostDetailpage({super.key, required this.product});
  

  @override
   Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}