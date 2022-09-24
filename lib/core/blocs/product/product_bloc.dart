// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
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
    on<AddProducts>(_onAddProducts);
    on<UpdateProducts>(_onUpdateProducts);
    on<AddToFavorite>(_addToFavorite);
    on<DeleteFromFavorite>(_deleteFromFavorite);
  }

  void _onLoadProducts(
    LoadProducts event,
    Emitter<ProductState> emit,
  ) {
    _productSubscription?.cancel();
    _productSubscription =
        _productRepository.getAllProducts().listen((products) {
      add(
        UpdateProducts(products),
      );
    });
  }

  void _onAddProducts(AddProducts event, Emitter<ProductState> emit) async {
    //_productSubscription?.cancel();
    if (state is ProductLoaded) {
      try {
        await _productRepository.addProduct(
          Product(
            imageUrl: event.imageUrl,
            size: event.size,
            width: event.width,
            heigth: event.heigth,
            model: event.model,
            material: event.material,
            description: event.description,
            price: event.price,
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

  void _addToFavorite(AddToFavorite event, Emitter<ProductState> emit) async {
    if (state is ProductLoaded) {
      try {
        await _productRepository.addToFavorite(
          Product(
            imageUrl: event.imageUrl,
            size: event.size,
            width: event.width,
            heigth: event.heigth,
            model: event.model,
            material: event.material,
            description: event.description,
            price: event.price,
          ),
        );
        emit(const ProductAdded());
        //emit(ProductLoading());
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    }
  }

  void _deleteFromFavorite(
      DeleteFromFavorite event, Emitter<ProductState> emit) async {
    if (state is ProductLoaded) {
      DocumentSnapshot? documentSnapshot;
      try {
        await _productRepository.deleteFromFavorites(documentSnapshot!);
        emit(ProductLoading());
      } catch (e) {
        emit(ProductError(e.toString()));
      }
    }
  }
}
