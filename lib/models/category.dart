class Category {
  int? id;
  String? categoryName;
  String? seoUrl;

//burdaki amaç category sınıfından bir nesne oluşturulduğunda bu nesnenin id,categoryName ve seoUrl değerlerini alması
  Category({this.id, this.categoryName, this.seoUrl});

//burdaki amaç jsondan gelen veriyi map yapısına çevirmek
  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['name'];
    seoUrl = json['seoUrl'];
  }

//burdaki amaç map yapısındaki veriyi jsona çevirmek
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': categoryName,
      'seoUrl': seoUrl,
    };
  }
}
