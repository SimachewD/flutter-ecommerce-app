import 'package:ecommerce_int2/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: null,
        child: Container(
            height: 250,
            width: MediaQuery.of(context).size.width / 2 - 29,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xfffbd085).withValues(alpha: (0.46 * 255))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    width: MediaQuery.of(context).size.width / 2 - 64,
                    height: MediaQuery.of(context).size.width / 2 - 64,
                    child: Image.asset(
                      product.image,
                    ),
                  ),
                ),
                Flexible(
                  child: Align(
                    alignment: Alignment(1, 0.5),
                    child: Container(
                        margin: const EdgeInsets.only(left: 16.0),
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                            color: Color(0xffe0450a).withValues(alpha: (0.51 * 255)),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10))),
                        child: Text(
                          product.name,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        )),
                  ),
                )
              ],
            )));
  }
}
