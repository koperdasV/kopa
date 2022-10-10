  import 'package:kopa/src/models/product_model.dart';

abstract class BaseFavoriteRepository {
  Stream<List<Product>> getFavProducts();

  Future<void> addToFavorite(String productId);
  Future<void> removeFromFavorites();
}
