import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
      body: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Kategoriler"),
                  Text("Ürünler"),
                  Text("Sepet"),
                  Text("Siparişler"),
                  Text("Profil"),
                  Text("Çıkış"),
                  Text("Giriş"),
                  Text("Kayıt"),
                  Text("Ürün Detay"),
                  Text("Kategori Detay"),
                  Text("Sepet Detay"),
                  Text("Sipariş Detay"),
                  Text("Profil Detay"),
                  Text("Çıkış Detay"),
                  Text("Giriş Detay"),
                  Text("Kayıt Detay"),
                  Text("Ürün Ekle"),
                  Text("Kategori Ekle"),
                  Text("Sepet Ekle"),
                  Text("Sipariş Ekle"),
                  Text("Profil Ekle"),
                  Text("Çıkış Ekle"),
                  Text("Giriş Ekle"),
                  Text("Kayıt Ekle"),
                  Text("Ürün Güncelle"),
                  Text("Kategori Güncelle"),
                  Text("Sepet Güncelle"),
                  Text("Sipariş Güncelle"),
                  Text("Profil Güncelle"),
                  Text("Çıkış Güncelle"),
                  Text("Giriş Güncelle"),
                  Text("Kayıt Güncelle"),
                  Text("Ürün Sil"),
                  Text("Kategori Sil"),
                  Text("Sepet Sil"),
                  Text("Sipariş Sil"),
                  Text("Profil Sil"),
                  Text("Çıkış Sil"),
                  Text("Giriş Sil"),
                  Text("Kayıt Sil")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
