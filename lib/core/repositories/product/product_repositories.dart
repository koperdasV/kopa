// ignore_for_file: avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:kopa/core/repositories/product/base_product_repository.dart';
import 'package:kopa/src/models/product_model.dart';

class ProductRepository extends BaseProductRepository {
  final user = FirebaseAuth.instance.currentUser;
  final productCollection =
      FirebaseFirestore.instance.collection('users-products');
  final CollectionReference favoriteCollection =
      FirebaseFirestore.instance.collection("users-fav-products");

  @override
  Stream<List<Product>> getAllProducts() {
    return productCollection
        .doc(user?.email)
        .collection('products')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList());
  }

  @override
  Future<void> addProduct(Product product) async {
    try {
      await productCollection.doc(user?.email).collection('products').doc().set(
        {
          'imageUrl': product.imageUrl,
          'size': product.size,
          'width': product.width,
          'heigth': product.heigth,
          'model': product.model,
          'material': product.material,
          'description': product.description,
          'price': product.price,
        },
      ).then(
        (value) => print('add to product'),
      );
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Filled with error '${e.code}': ${e.message}");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<void> deleteProduct(Product product) {
    return productCollection.doc(product.material).delete();
  }

  @override
  Future<void> updateProduct(Product product) {
    throw UnimplementedError();
  }

  @override
  Future addToFavorite(Product product) async {
    return favoriteCollection
        .doc(user?.email)
        .collection("fav-products")
        .doc()
        .set(
      {
        'imageUrl': product.imageUrl,
        'size': product.size,
        'width': product.width,
        'height': product.heigth,
        'model': product.model,
        'material': product.material,
        'description': product.description,
        'price': product.price,
      },
    ).then(
      (value) => print("add to favorite"),
    );
  }

  @override
  Future deleteFromFavorites(DocumentSnapshot documentSnapshot) async {
    return favoriteCollection
        .doc(user?.email)
        .collection("fav-products")
        .doc(documentSnapshot.id).delete()
    .then(
      (value) => print("remove from favorite"),
    );
  }
}
