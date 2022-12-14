import 'package:flutter/material.dart';
import 'package:kopa/src/models/product_model.dart';

class CardPhoto extends StatelessWidget {
  const CardPhoto({
    Key? key, required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 150,
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
