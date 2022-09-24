import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String imageUrl;
  final int size;
  final int width;
  final int heigth;
  final String model;
  final String material;
  final String description;
  final int price;

  const Product({
    required this.imageUrl,
    required this.size,
    required this.width,
    required this.heigth,
    required this.model,
    required this.material,
    required this.description,
    required this.price,
  });

  Map<String, Object> toJson() {
    return {
      'imageUrl': imageUrl,
      'size': size,
      'width': width,
      'height': heigth,
      'model': model,
      'material': material,
      'description': description,
      'price': price,
    };
  }

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      imageUrl: json['imageUrl'],
      size: json['size'],
      width: json['width'],
      heigth: json['heigth'],
      model: json['model'],
      material: json['material'],
      description: json['description'],
      price: json['price'],
    );
  }

  @override
  String toString() {
    return 'Product{imageUrl: $imageUrl, size: $size, width: $width, height: $heigth, model: $model, material: $material, description: $description, price: $price}';
  }

  Map<String, Object> toDocument() {
    return {
      'imageUrl': imageUrl,
      'size': size,
      'width': width,
      'heigth': heigth,
      'model': model,
      'material': material,
      'description': description,
      'price': price,
    };
  }

  static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      imageUrl: snap['imageUrl'],
      size: snap['size'],
      width: snap['width'],
      heigth: snap['heigth'],
      model: snap['model'],
      material: snap['material'],
      description: snap['description'],
      price: snap['price'],
    );
    return product;
  }

  @override
  List<Object?> get props => [
        imageUrl,
        size,
        width,
        heigth,
        model,
        material,
        description,
        price,
      ];
}
