import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/models/product_model.dart';

class CardPrice extends StatelessWidget {
  const CardPrice({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 75,
        height: 40,
        decoration: BoxDecoration(
          color: AppColor.priceColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            '${product.price}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
