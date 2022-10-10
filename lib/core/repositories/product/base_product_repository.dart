import 'package:kopa/src/models/product_model.dart';

abstract class BaseProductRepository {
  Stream<List<Product>> getAllProducts();
  Stream<List<Product>> getUserProducts();

  Future<void> addProduct(Product product);
  Future<void> updateProduct(Product product);
}
