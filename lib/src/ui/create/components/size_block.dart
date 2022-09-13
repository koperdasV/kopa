import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/create/components/picker_widget.dart';

class SizeBlockWidget extends StatelessWidget {
  const SizeBlockWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height / 3.5,
      color: AppColor.cardColor,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Image.asset('images/icon_shoes.png'),
          ),
          Column(
            children: const [
              RowSizeWidget(
                lableText: 'Розмір',
                widget: Picker(
                  dataList: [
                    'EU',
                    'UA',
                    'GB',
                  ],
                ),
                child: Picker(
                  dataList: [
                    '36',
                    '37',
                    '38',
                    '39',
                    '40',
                    '41',
                    '42',
                    '43',
                    '44',
                  ],
                ),
              ),
              //DividerWidget(),
              RowSizeWidget(
                lableText: 'Довжина/см',
                child: Picker(
                  dataList: [
                    '28.5',
                    '29.5',
                    '30.5',
                    '31',
                    '31.5',
                    '32',
                  ],
                ),
              ),
              //DividerWidget(),
              RowSizeWidget(
                lableText: 'Ширина/см',
                child: Picker(
                  dataList: [
                    '10',
                    '11',
                    '12',
                    '13',
                    '14',
                    '15',
                    '16',
                  ],
                ),
              ),
              //DividerWidget(),
            ],
          ),
        ],
      ),
    );
  }
}

class RowSizeWidget extends StatelessWidget {
  final Widget? child;
  final Widget? widget;
  final String? lableText;
  const RowSizeWidget({
    Key? key,
    this.lableText,
    this.child,
    this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 50),
      child: Row(
        children: [
          Text(
            lableText.toString(),
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: child,
          ),
          const SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 2,
              width: 0,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: widget,
          ),
        ],
      ),
    );
  }
}
