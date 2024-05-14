import 'package:http/http.dart' as http;

//burdaki amaç ürünleri getirmek
class ProductApi {
  static Future getProducts() {
    return http.get(Uri.parse("http://10.0.0.2:3000/products"));
  }

//burdaki amaç kategori id'sine göre ürünleri getirmek
  static Future getProductsByCategoryId(int categoryId) {
    return http.get(Uri.parse("http://10.0.0.2:3000/products?categoryId=$categoryId"));
  }
}
