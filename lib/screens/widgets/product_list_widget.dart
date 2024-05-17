import 'package:flutter/material.dart';
import 'package:http_demo/models/product.dart';

class ProductListWidget extends StatefulWidget {
  ProductListWidget({required this.products, super.key});
  List<Product> products = [];

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: widget.products.length,
          itemBuilder: (context, index) {
            return Text(widget.products[index].productName!);
          }),
    );
  }
}
