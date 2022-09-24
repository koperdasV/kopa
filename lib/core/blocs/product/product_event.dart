part of 'product_bloc.dart';

abstract class ProductEvent extends Equatable {
  const ProductEvent();

  @override
  List<Object> get props => [];
}

class LoadProducts extends ProductEvent {}

class AddProducts extends ProductEvent {
  final String imageUrl;
  final int size;
  final int width;
  final int heigth;
  final String model;
  final String material;
  final String description;
  final int price;

  const AddProducts(
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

class AddToFavorite extends ProductEvent {
  final String imageUrl;
  final int size;
  final int width;
  final int heigth;
  final String model;
  final String material;
  final String description;
  final int price;

  const AddToFavorite(
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

class DeleteFromFavorite extends ProductEvent {
  //final DocumentSnapshot documentSnapshot;

  const DeleteFromFavorite();

  @override
  List<Object> get props => [];
}

class UpdateProducts extends ProductEvent {
  final List<Product> products;

  const UpdateProducts(this.products);

  @override
  List<Object> get props => [products];
}
