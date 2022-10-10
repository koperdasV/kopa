import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
class Product with _$Product {
  const Product._();
  const factory Product({
    required String idProduct,
    required String imageUrl,
    required int size,
    required int width,
    required int heigth,
    required String model,
    required String material,
    required String description,
    required int price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);

    static Product fromSnapshot(DocumentSnapshot snap) {
    Product product = Product(
      idProduct: snap.id,
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
}
// class Product extends Equatable {
//   final String idProduct;
//   final String imageUrl;
//   final int size;
//   final int width;
//   final int heigth;
//   final String model;
//   final String material;
//   final String description;
//   final int price;

//   const Product({
//     required this.idProduct,
//     required this.imageUrl,
//     required this.size,
//     required this.width,
//     required this.heigth,
//     required this.model,
//     required this.material,
//     required this.description,
//     required this.price,
//   });

//   Map<String, Object> toJson() {
//     return {
//       'idProduct': idProduct,
//       'imageUrl': imageUrl,
//       'size': size,
//       'width': width,
//       'height': heigth,
//       'model': model,
//       'material': material,
//       'description': description,
//       'price': price,
//     };
//   }

//   factory Product.fromJson(Map<String, dynamic> json) {
//     return Product(
//       idProduct: json['idProduct'],
//       imageUrl: json['imageUrl'],
//       size: json['size'],
//       width: json['width'],
//       heigth: json['heigth'],
//       model: json['model'],
//       material: json['material'],
//       description: json['description'],
//       price: json['price'],
//     );
//   }

//   @override
//   String toString() {
//     return 'Product{idProduct: $idProduct, imageUrl: $imageUrl, size: $size, width: $width, height: $heigth, model: $model, material: $material, description: $description, price: $price}';
//   }

//   Map<String, Object> toDocument() {
//     return {
//       'idProduct': idProduct,
//       'imageUrl': imageUrl,
//       'size': size,
//       'width': width,
//       'heigth': heigth,
//       'model': model,
//       'material': material,
//       'description': description,
//       'price': price,
//     };
//   }



//   @override
//   List<Object?> get props => [
//         idProduct,
//         imageUrl,
//         size,
//         width,
//         heigth,
//         model,
//         material,
//         description,
//         price,
//       ];
// }
