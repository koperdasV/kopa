import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kopa/src/models/product_model.dart';

abstract class BaseProductRepository {
  
  Stream<List<Product>> getAllProducts();

  Future<void> addProduct(Product product);
  Future<void> deleteProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> addToFavorite(Product product);
  Future<void> deleteFromFavorites(DocumentSnapshot documentSnapshot);
}
