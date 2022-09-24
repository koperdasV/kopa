import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/models/product_model.dart';

class SizeShoesWidget extends StatelessWidget {
  const SizeShoesWidget({
    Key? key, required this.product,
  }) : super(key: key);

    final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Text(
            '${product.size}',
            style: TextStyle(
              color: AppColor.kPrimaryColor,
              fontSize: 22,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          const Text(
            'EU',
          ),
        ],
      ),
    );
  }
}
