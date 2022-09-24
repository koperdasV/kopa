import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/models/product_model.dart';
import 'package:kopa/src/ui/details/details_screen.dart';
import 'package:kopa/src/ui/home/components/card.dart';

import 'card_favorite.dart';
import 'card_model.dart';
import 'card_photo.dart';
import 'card_price.dart';
import 'length_shoes_widget.dart';
import 'material_shoes_widget.dart';
import 'size_shoes_widget.dart';
import 'width_shoes_widget.dart';

class ListCardWidget extends StatefulWidget {
  const ListCardWidget({Key? key}) : super(key: key);

  @override
  State<ListCardWidget> createState() => _ListCardWidgetState();
}

class _ListCardWidgetState extends State<ListCardWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state is ProductLoaded) {
          return Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: state.products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: state.products[index],);
              },
            ),
          );
        } else {
          return const Text('Something went wrong.');
        }
      },
    );
  }
}


