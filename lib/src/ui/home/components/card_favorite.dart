import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/favorite/favorite_bloc.dart';
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
    //final user = FirebaseAuth.instance.currentUser;

    return StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection("users-fav-products")
            .where('idProduct', arrayContains: product.idProduct)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return const Text("data null");
          }
          return IconButton(
            onPressed: () {
              snapshot.data!.docs.isEmpty
                  ? BlocProvider.of<FavoriteBloc>(context).add(
                      AddToFavorite(idProduct: product.idProduct),
                    )
                  : BlocProvider.of<FavoriteBloc>(context)
                      .add(const DeleteFromFavorite());
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
        });
  }
}
