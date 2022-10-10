part of 'favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.initial() = _Initial;
  const factory FavoriteState.loaded() = _FavoriteLoaded;
  const factory FavoriteState.added() = _FavoriteAdded;
  const factory FavoriteState.error(String error) = _FavoriteError;
}
