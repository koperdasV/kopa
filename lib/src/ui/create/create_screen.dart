// ignore_for_file: avoid_print, must_be_immutable  
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';

import 'components/divider_widget.dart';
import 'components/lable_text.dart';
import 'components/photo_grid_view.dart';
import 'components/picker_widget.dart';
import 'components/save_button.dart';
import 'components/size_block.dart';
import 'components/text_form_field.dart';

class CreateScreen extends StatelessWidget {
  CreateScreen({
    Key? key,
  }) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final user = FirebaseAuth.instance.currentUser;

  List<String> model = [
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
  List<String> material = [
    'Штучна шкіра',
    'Натуральна шкіра',
    'Поліестер',
    'Комбінована шкіра',
    'Текстиль',
    'Натуральний нубук',
    'Нубук-ойл',
    'Штучний нубук',
  ];

  final TextEditingController imageController = TextEditingController();
  final TextEditingValue sizeController = const TextEditingValue();
  final TextEditingController widthController = TextEditingController();
  final TextEditingController heigthController = TextEditingController();
  final TextEditingController modelController = TextEditingController();
  final TextEditingController materialController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  // Future<void> _create() async {
  //   descriptionController.text = state.description;
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) {
        return Scaffold(
          key: _formKey,
          appBar: AppBar(
            actions: [
              SaveButton(
                onPressed: () {
                  _formKey.currentState?.save();
                  //context.read<ProductBloc>().add(AddProducts());
                  //_create();
                  Navigator.pop(context);
                },
              ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Picker(
                    dataList: model,
                  ),
                ),
                const DividerWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Матеріал'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Picker(
                    dataList: material,
                  ),
                ),
                const DividerWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Опис'),
                ),
                TextFormFieldWidget(
                  controller: descriptionController,
                ),
                const DividerWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Ціна'),
                ),
                const TextFormFieldWidget(
                  //onChanged: ,
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
      },
    );
  }
}
