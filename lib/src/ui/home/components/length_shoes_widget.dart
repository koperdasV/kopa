import 'package:flutter/material.dart';
import 'package:kopa/src/models/product_model.dart';

class LengthShoesWidget extends StatelessWidget {
  const LengthShoesWidget({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Text(
            '${product.heigth}',
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 7,
          ),
          const Text(
            'Довжина / см',
          ),
        ],
      ),
    );
  }
}
