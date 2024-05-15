import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http_demo/data/data.api/category_api.dart';
import 'package:http_demo/models/category.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

List<Category> categories = [];
List<Widget> categoryWidgets = [];

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    getCategoriesFromApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Alışveriş Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: categoryWidgets,
              ),
            ),
          ],
        ),
      ),
    );
  }

//burda şunu yapıyoruz kategorileri api'den çekiyoruz ve kategorileri listeye atıyoruz
  void getCategoriesFromApi() {
    CategoryApi.getCategories().then((response) {
      setState(() {
        Iterable list = json.decode(response.body);
        categories = list.map((category) => Category.fromJson(category)).toList();
        getCategoryWidgets();
      });
    });
  }

//burda kategorileri widgetlara atıyoruz
  getCategoryWidgets() {
    for (int i = 0; i < categories.length; i++) {
      categoryWidgets.add(
        getCategoryWidget(categories[i]),
      );
    }
    return categoryWidgets;
  }

//burda kategorileri widget olarak döndürüyoruz
  Widget getCategoryWidget(Category category) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          side: const BorderSide(color: Colors.lightGreenAccent, width: 1),
          padding: const EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
            category.categoryName ?? '',
          style: const TextStyle(
            color: Colors.blueGrey,
          ),
        ));
  }
}
