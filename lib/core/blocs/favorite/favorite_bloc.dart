// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/core/repositories/favorite/favorite_repository.dart';
import 'package:kopa/src/models/product_model.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';
part 'favorite_bloc.freezed.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final FavoriteRepository _favoriteRepository;
  StreamSubscription? _favoriteSubscription;

  FavoriteBloc({required FavoriteRepository favoriteRepository})
      : _favoriteRepository = favoriteRepository,
        super(const FavoriteState.initial()) {
    on<LoadFavorite>(_loadFavorite);
    on<AddToFavorite>(_addToFavorite);
    on<DeleteFromFavorite>(_deleteFromFavorite);
    on<UpdateFavorite>(_updateFavorite);
  }

  Future<void> _loadFavorite(
      LoadFavorite event, Emitter<FavoriteState> emit) async {
    _favoriteSubscription?.cancel();
    _favoriteSubscription = _favoriteRepository.getFavProducts().listen(
      (products) {
        add(
          FavoriteEvent.updateFavorite(products: products),
        );
      },
    );
  }

  @override
  Future<void> close() {
    _favoriteSubscription?.cancel();
    return super.close();
  }

  Future<void> _addToFavorite(
      AddToFavorite event, Emitter<FavoriteState> emit) async {
    if (state is _FavoriteLoaded) {
      try {
        await _favoriteRepository.addToFavorite(event.idProduct);
        print(event.idProduct);
      } catch (e) {
        emit(FavoriteState.error(e.toString()));
      }
    }
  }

  Future<void> _deleteFromFavorite(
      DeleteFromFavorite event, Emitter<FavoriteState> emit) async {
    if (state is _FavoriteLoaded) {
      try {
        await _favoriteRepository.removeFromFavorites();
      } catch (e) {
        emit(FavoriteState.error(e.toString()));
      }
    }
  }

  Future<void> _updateFavorite(
      UpdateFavorite event, Emitter<FavoriteState> emit) async {
    emit(const FavoriteState.loaded());
  }
}
