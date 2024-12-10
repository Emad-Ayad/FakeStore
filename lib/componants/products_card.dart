import 'package:fake_store/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
   ProductCard({
    super.key,
     required this.product
  });

  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 140,
        width: 200,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
              blurRadius: 40,
              color: Colors.grey.withOpacity(0.4),
              offset: const Offset(10, 10),
              spreadRadius: 0)
        ]),
        child: Card(
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title.substring(0,10),
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                        r"$" " ${product.price.toString()}",
                        style: const TextStyle(color: Colors.black, fontSize: 16)),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Positioned(
        right: 20,
        bottom: 100,
        child: Image.network(
          product.image,
          height: 100,
          width: 100,
        ),
      )
    ]);
  }
}
