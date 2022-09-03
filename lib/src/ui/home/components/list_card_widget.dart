import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';

import 'card_favorite.dart';
import 'card_name.dart';
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
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, index) {
          return Padding(
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
                const CardPhoto(),
                const FavoriteWidget(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 170),
                      child: Row(
                        children: [
                          Column(
                            children: const [
                              CardName(),
                              SizedBox(height: 9),
                              Text(
                                'Розмір стопи:',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          const SizedBox(width: 45),
                          const CardPrice(),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          SizeShoesWidget(),
                          LengthShoesWidget(),
                          WidthShoesWidget(),
                        ],
                      ),
                    ),
                    const MaterialShoesWidget(),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}


