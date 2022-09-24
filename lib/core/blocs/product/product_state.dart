part of 'product_bloc.dart';

class ProductState extends Equatable {
  final List<Product> allProducts;
  const ProductState({this.allProducts = const <Product>[]});

  @override
  List<Object> get props => [allProducts];
}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;

  const ProductLoaded({this.products = const <Product>[]});

  @override
  List<Object> get props => [products];
}

class ProductAdding extends ProductState {
  const ProductAdding();

  @override
  List<Object> get props => [];
}

class ProductAdded extends ProductState {
  const ProductAdded();

  @override
  List<Object> get props => [];
}

class ProductError extends ProductState {
  final String error;
  const ProductError(this.error);

  @override
  List<Object> get props => [error];
}
