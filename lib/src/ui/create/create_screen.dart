import 'package:flutter/material.dart';

import 'components/divider_widget.dart';
import 'components/lable_text.dart';
import 'components/photo_grid_view.dart';
import 'components/picker_widget.dart';
import 'components/save_button.dart';
import 'components/size_block.dart';
import 'components/text_form_field.dart';

class CreateScreen extends StatelessWidget {
  const CreateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SaveButton(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LableText(lableText: 'Додати фото'),
            const PhotoGridViewWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: LableText(lableText: 'Розмір'),
            ),
            SizeBlockWidget(size: size),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: LableText(lableText: 'Модель'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Picker(
                dataList: [
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
                ],
              ),
            ),
            const DividerWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: LableText(lableText: 'Матеріал'),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Picker(
                dataList: [
                  'Штучна шкіра',
                  'Натуральна шкіра',
                  'Поліестер',
                  'Комбінована шкіра',
                  'Текстиль',
                  'Натуральний нубук',
                  'Нубук-ойл',
                  'Штучний нубук',
                ],
              ),
            ),
            const DividerWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: LableText(lableText: 'Опис'),
            ),
            const TextFormFieldWidget(),
            const DividerWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: LableText(lableText: 'Ціна'),
            ),
            const TextFormFieldWidget(
              keyboardType: TextInputType.number,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: DividerWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
