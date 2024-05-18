class Product {
  int? id;
  int? categoryId;
  String productName;
  String quantityPerUnit;
  double? unitPrice;
  int? unitsInStock;

  Product({this.id, this.categoryId, required this.productName, required this.quantityPerUnit, this.unitPrice, this.unitsInStock});

  Product.fromJson(Map<String, dynamic> json)
      : productName = '',
        quantityPerUnit = '' {
    id = json['id'];
    categoryId = json['categoryId'];
    productName = json['productName'];
    quantityPerUnit = json['quantityPerUnit'];
    unitPrice = double.tryParse(json['unitPrice'].toString());
    unitsInStock = json['unitsInStock'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'categoryId': categoryId,
      'productName': productName,
      'quantityPerUnit': quantityPerUnit,
      'unitPrice': unitPrice,
      'unitsInStock': unitsInStock,
    };
  }
}
