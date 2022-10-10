part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends ProductEvent {}

class LoadUserProducts extends ProductEvent {}

class AddProducts extends ProductEvent {
  final String idProduct;
  final String imageUrl;
  final String size;
  final String width;
  final String heigth;
  final String model;
  final String material;
  final String description;
  final String price;

  const AddProducts(
    this.idProduct,
    this.imageUrl,
    this.size,
    this.width,
    this.heigth,
    this.model,
    this.material,
    this.description,
    this.price,
  );
  @override
  List<Object> get props => [
        idProduct,
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

class UpdateProducts extends ProductEvent {
  final List<Product> products;

  const UpdateProducts(this.products);

  @override
  List<Object> get props => [products];
}
