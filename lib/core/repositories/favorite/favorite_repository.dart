// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kopa/core/repositories/favorite/base_favorite_repository.dart';
import 'package:kopa/src/models/product_model.dart';

class FavoriteRepository extends BaseFavoriteRepository{
  final user = FirebaseAuth.instance.currentUser;
  final CollectionReference favoriteCollection =
      FirebaseFirestore.instance.collection("users-fav-products");

  @override
  Stream<List<Product>> getFavProducts() {
    return favoriteCollection
    .doc(user?.uid)
        .collection('favorites')
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => Product.fromSnapshot(doc)).toList());
  }



@override
  Future<void> addToFavorite(String productId) async {
    final docData = {
          "idProduct": FieldValue.arrayUnion([productId]),
        };
    await favoriteCollection
    .doc(user?.uid)
    .set(docData).then(
      (value) => print("add to favorite"),
    );
  }

  @override
  Future<void> removeFromFavorites() async {
    await favoriteCollection
        .doc()
        .delete()
        .then((value) => print("remove from favorite"));
  }  
}