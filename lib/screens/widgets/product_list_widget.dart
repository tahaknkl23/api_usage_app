import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http_demo/models/product.dart';
import 'package:http_demo/screens/widgets/product_list_row.dart';

class ProductListWidget extends StatefulWidget {
  ProductListWidget({required this.products, super.key});
  List<Product> products = [];

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //bu 2 olunca 2 sütun oluyor
              childAspectRatio: 1.0, // bu 1.0 olunca kare oluyor
            ),
            itemCount: widget.products.length,
            itemBuilder: (BuildContext context, int index) {
              return PoductListRowWidget(
                product: widget.products[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
