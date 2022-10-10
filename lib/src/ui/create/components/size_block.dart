import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/create/components/picker_widget.dart';

class SizeBlockWidget extends StatelessWidget {
  const SizeBlockWidget({
    Key? key,
    required this.size,
    required TextEditingValue sizeController,
    required TextEditingController heigthController,
    required TextEditingController widthController,
  })  : _sizeController = sizeController,
        _heigthController = heigthController,
        _widthController = widthController,
        super(key: key);

  final Size size;
  final TextEditingValue _sizeController;
  final TextEditingController _heigthController;
  final TextEditingController _widthController;

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
            children: [
              RowSizeWidget(
                lableText: 'Розмір',
                widget: const Picker(
                  dataList: [
                    'EU',
                    'UA',
                    'GB',
                  ],
                ),
                child: Picker(
                  dataList: [
                    [_sizeController]
                  ],
                ),
              ),
              //DividerWidget(),
              RowSizeWidget(
                lableText: 'Довжина/см',
                child: Picker(
                  dataList: [_heigthController],
                ),
              ),
              //DividerWidget(),
              RowSizeWidget(
                lableText: 'Ширина/см',
                child: Picker(
                  dataList: [_widthController],
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
