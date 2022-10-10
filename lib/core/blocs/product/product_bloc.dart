// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kopa/core/repositories/product/product_repositories.dart';
import 'package:kopa/src/models/product_model.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository _productRepository;
  StreamSubscription? _productSubscription;
  ProductBloc({required ProductRepository productRepository})
      : _productRepository = productRepository,
        super(ProductLoading()) {
    on<LoadProducts>(_onLoadProducts);
    on<LoadUserProducts>(_onLoadUserProducts);
    on<AddProducts>(_onAddProducts);
  on<UpdateProducts>(_onUpdateProducts);
  }

  void _onLoadProducts(LoadProducts event, Emitter<ProductState> emit) {
    _productSubscription?.cancel();
    _productSubscription = _productRepository.getAllProducts().listen(
      (products) {
        add(
          UpdateProducts(products),
        );
      },
    );
  }

  void _onLoadUserProducts(LoadUserProducts event, Emitter<ProductState> emit) {
    _productSubscription?.cancel();
    _productSubscription = _productRepository.getUserProducts().listen(
      (products) {
        add(
          UpdateProducts(products),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _productSubscription?.cancel();
    return super.close();
  }

  void _onAddProducts(AddProducts event, Emitter<ProductState> emit) async {
    if (state is ProductLoaded) {
      try {
        await _productRepository.addProduct(
          Product(
            idProduct: event.idProduct,
            imageUrl: event.idProduct,
            size: int.parse(event.idProduct),
            width: int.parse(event.idProduct),
            heigth: int.parse(event.idProduct),
            model: event.idProduct,
            material: event.idProduct,
            description: event.description,
            price: int.parse(event.price),
          ),
        );
        emit(const ProductAdded());

        print('add product to DB');
        //emit(ProductLoading());
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    }
  }

  void _onUpdateProducts(
    UpdateProducts event,
    Emitter<ProductState> emit,
  ) {
    emit(ProductLoaded(products: event.products));
  }
}
