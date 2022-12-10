import 'package:flutter/material.dart';
import 'package:pet_shop/constants.dart';
import 'package:pet_shop/models/product_list_container.dart';
import 'package:pet_shop/models/products.dart';
import 'package:pet_shop/posts/post_details_page.dart';

import 'banner.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HomeBanner(size: size),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'New Pets',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Expanded(child: GridView.builder(itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
              childAspectRatio: 0.60,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              ), 
            itemBuilder: (context, index) => 
            ProductsListContainer(products: products[index],
            press: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) =>PostDetailpage(
              product: products[index],
            ) )),
            )))
        ],
      ),
    );
  }
}



