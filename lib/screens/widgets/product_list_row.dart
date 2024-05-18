import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class PoductListRowWidget extends StatelessWidget {
  PoductListRowWidget({super.key, required this.product});
  Product product;

  @override
  Widget build(BuildContext context) {
    return buildProductItemCard(context);
  }

  Widget buildProductItemCard(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/product1.jpg',
                width: MediaQuery.of(context).size.width / 2,
                height: 130,
              ),
            ),
            Text(product.productName),
            Text(
              '${product.unitPrice.toString()} TL',
              style: const TextStyle(fontSize: 18, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
