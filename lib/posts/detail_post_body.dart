import 'package:flutter/material.dart';
import 'package:pet_shop/constants.dart';
import 'package:pet_shop/models/products.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [

        SizedBox(
          width: double.infinity,
          child: Container(

            height:size.height* 0.35 ,
            decoration: const BoxDecoration(color: kPrimaryColor),
            child: Image.asset(product.image),
          
          ),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: kBgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
              ),
              
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(product.title,
                      style:
                       const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                  children: [
                    Text(
                      "\\${product.price}",
                      style:const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 20, 
                        fontWeight: FontWeight.bold),
                    ),

                  ],
                ),
                const SizedBox(
                    height: 30,
                  ),
                  Divider(),
                  Row(
                  children: const [
                    Text(
                      "About",
                      style:TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
                const SizedBox(
                    height: 10,
                  ),
                  Row(
                  children: [
                    Text(
                      product.description,textAlign: TextAlign.center,
                      style:const TextStyle(
                        fontSize: 16, 
                        ),
                    ),
                    const SizedBox(
                    height: 10,
                  ),
                  Divider(),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: kPrimaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    onPressed: (){}, child: const Text('order Now',
                    style: TextStyle(
                      fontSize: 18,color: Colors.white),
                    ),
                  ),
                  ],
                ),
              ]),
            ),
          ),
        )
      ],
    );
  }
}
