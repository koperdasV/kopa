import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/src/models/product_model.dart';

class CardFavorite extends StatelessWidget {
  const CardFavorite({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:FirebaseFirestore.instance
            .collection("users-fav-products")
            .doc(FirebaseAuth.instance.currentUser!.email)
            .collection("fav-products")
            .where("imageUrl", isEqualTo: product.imageUrl)
            .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
            return const Text("data null");
          }
        return IconButton(
          onPressed: () {
            snapshot.data!.docs.isEmpty
                ? BlocProvider.of<ProductBloc>(context).add(
                    AddToFavorite(
                      product.imageUrl,
                      product.size,
                      product.width,
                      product.heigth,
                      product.model,
                      product.material,
                      product.description,
                      product.price,
                    ),
                  )
                : BlocProvider.of<ProductBloc>(context).add(
                    DeleteFromFavorite());
          },
          icon: snapshot.data!.docs.isEmpty
              ? const Icon(
                  Icons.favorite_outline,
                  size: 40,
                  color: Colors.white,
                )
              : const Icon(
                  Icons.favorite,
                  size: 40,
                  color: Colors.red,
                ),
        );
      }
    );
  }
}