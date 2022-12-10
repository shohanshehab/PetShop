import 'package:flutter/material.dart';
import 'package:pet_shop/constants.dart';
import 'package:pet_shop/models/products.dart';

import 'detail_post_body.dart';

class PostDetailpage extends StatefulWidget {
  final Product product;

  const PostDetailpage({super.key, required this.product});

  @override
  State<PostDetailpage> createState() => _PostDetailpageState();
}

class _PostDetailpageState extends State<PostDetailpage> {
  @override
  Widget build(BuildContext context) {
    var product;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        actions: [
          IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
        ],
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
