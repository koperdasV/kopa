import 'package:flutter/material.dart';
import 'package:kopa/src/models/product_model.dart';

class CardModel extends StatelessWidget {
  const CardModel({
    Key? key, required this.product,
  }) : super(key: key);

    final Product product;


  @override
  Widget build(BuildContext context) {
    return Text(
      product.model,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }
}
