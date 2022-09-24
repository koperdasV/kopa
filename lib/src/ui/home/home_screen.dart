import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

import 'components/list_card_widget.dart';

final models = [
  'Nike',
  'Adidas',
  'Puma',
  'New Balance',
  'Asics',
  'Jordan',
  'Reebok',
  'Vans',
  'FILA',
  'Levis',
  'Lacoste',
  'Umbro',
  'Converse',
  'Balenciaga',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    // var selectedModel = "Модель";
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.filter_alt),
          onPressed: () {
            buildFilterBottomSheet(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: const [
            ListCardWidget(),
          ],
        ),
      ),
    );
  }

  Future<void> buildFilterBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      backgroundColor: AppColor.navBarColor,
      builder: (context) {
        return SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                child: CupertinoPicker(
                  itemExtent: models.length.toDouble(),
                  children: models
                      .map((model) => Center(
                            child: Text(model),
                          ))
                      .toList(),
                  onSelectedItemChanged: (index) {},
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
