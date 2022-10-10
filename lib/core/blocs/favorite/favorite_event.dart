part of 'favorite_bloc.dart';

@freezed
class FavoriteEvent with _$FavoriteEvent {
  const factory FavoriteEvent.started() = Started;
  const factory FavoriteEvent.loadFavorite() = LoadFavorite;
  const factory FavoriteEvent.addFavorite({required String idProduct}) =
      AddToFavorite;
  const factory FavoriteEvent.deleteFavorite() = DeleteFromFavorite;
  const factory FavoriteEvent.updateFavorite({required List<Product> products}) = UpdateFavorite;
}
