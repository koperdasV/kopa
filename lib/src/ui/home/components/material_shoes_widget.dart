import 'package:flutter/material.dart';
import 'package:kopa/src/models/product_model.dart';

class MaterialShoesWidget extends StatelessWidget {
  const MaterialShoesWidget({
    Key? key, required this.product,
  }) : super(key: key);

    final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 66, top: 16),
      child: Text(
        product.material,
        style: const TextStyle(
          color: Color.fromRGBO(154, 154, 154, 1),
        ),
      ),
    );
  }
}