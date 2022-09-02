import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/resources/styles.dart';

import 'components/card_favorite.dart';
import 'components/card_name.dart';
import 'components/card_photo.dart';
import 'components/card_price.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.filter_alt),
          onPressed: () {},
        ),
      ),
      body: Center(
        child: Container(
          color: AppColor.kPrimaryColor,
          child: Column(
            children: const [
              ListCardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

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
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '40',
                              style: TextStyle(
                                color: AppColor.selectedItemColor,
                                fontSize: 30,
                              ),
                            ),
                            const Text(
                              'EU',
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '28.5',
                            ),
                            Text(
                              'Довжина / см',
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '10',
                            ),
                            Text(
                              'Ширина / см',
                            ),
                          ],
                        ),
                      ],
                    )
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
