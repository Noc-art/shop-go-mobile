import 'dart:convert';

// Fungsi untuk konversi JSON ke List<Product>
List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

// Fungsi untuk konversi List<Product> ke JSON
String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// Fungsi untuk memfilter produk berdasarkan user ID
List<Product> filterProductsByUser(List<Product> products, int userId) {
  return products.where((product) => product.fields.user == userId).toList();
}

class Product {
  String model;
  String pk;
  Fields fields;

  Product({
    required this.model,
    required this.pk,
    required this.fields,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    model: json["model"],
    pk: json["pk"],
    fields: Fields.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class Fields {
  int user;
  String name;
  int price;
  String description;
  int stock;

  Fields({
    required this.user,
    required this.name,
    required this.price,
    required this.description,
    required this.stock,
  });

  factory Fields.fromJson(Map<String, dynamic> json) => Fields(
    user: json["user"],
    name: json["name"],
    price: json["price"],
    description: json["description"],
    stock: json["stock"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "name": name,
    "price": price,
    "description": description,
    "stock": stock,
  };
}
