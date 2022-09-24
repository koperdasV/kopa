import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/screens.dart';
import 'package:kopa/src/models/product_model.dart';
import 'package:kopa/src/ui/home/components/card_favorite.dart';
import 'package:kopa/src/ui/home/components/card_model.dart';
import 'package:kopa/src/ui/home/components/card_photo.dart';
import 'package:kopa/src/ui/home/components/length_shoes_widget.dart';
import 'package:kopa/src/ui/home/components/material_shoes_widget.dart';
import 'package:kopa/src/ui/home/components/size_shoes_widget.dart';
import 'package:kopa/src/ui/home/components/width_shoes_widget.dart';

import 'card_price.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => const DetailsScreen()),
        ),
      ),
      child: Padding(
        padding: AppPadding.cardPadding,
        child: Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 0.5),
                    blurRadius: 5.0,
                  ),
                ],
                color: AppColor.cardColor,
              ),
            ),
            CardPhoto(
              product: product,
            ),
            CardFavorite(product: product),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 170),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          CardModel(
                            product: product,
                          ),
                          const SizedBox(height: 9),
                          const Text(
                            'Розмір стопи:',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                      const SizedBox(width: 45),
                      CardPrice(
                        product: product,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizeShoesWidget(
                        product: product,
                      ),
                      LengthShoesWidget(
                        product: product,
                      ),
                      WidthShoesWidget(
                        product: product,
                      ),
                    ],
                  ),
                ),
                MaterialShoesWidget(
                  product: product,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
