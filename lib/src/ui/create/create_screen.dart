// ignore_for_file: avoid_print, must_be_immutable
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kopa/core/blocs/product/product_bloc.dart';
import 'package:kopa/src/models/product_model.dart';
import 'package:kopa/src/ui/create/components/text_form_field.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

import 'components/divider_widget.dart';
import 'components/lable_text.dart';
import 'components/photo_grid_view.dart';
import 'components/picker_widget.dart';
import 'components/save_button.dart';
import 'components/size_block.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({
    Key? key,
    required this.imageFocusNode,
    required this.widthFocusNode,
    required this.heigthFocusNode,
    required this.sizeFocusNode,
    required this.materialFocusNode,
    required this.modelFocusNode,
    required this.descriptionFocusNode,
    required this.priceFocusNode,
  }) : super(key: key);

  final FocusNode imageFocusNode;
  final FocusNode widthFocusNode;
  final FocusNode heigthFocusNode;
  final FocusNode sizeFocusNode;
  final FocusNode materialFocusNode;
  final FocusNode modelFocusNode;
  final FocusNode descriptionFocusNode;
  final FocusNode priceFocusNode;

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _isProcessing = false;

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
  List<int> width = [
    10,
    11,
    12,
    13,
    14,
    15,
    16,
  ];
  List<double> heigth = [
    28.5,
    29.5,
    30.5,
    31,
    31.5,
    32,
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

  final TextEditingController _imageController = TextEditingController();

  final TextEditingController _sizeController = TextEditingController();

  final TextEditingController _widthController = TextEditingController();

  final TextEditingController _heigthController = TextEditingController();

  final TextEditingController _modelController = TextEditingController();

  final TextEditingController _materialController = TextEditingController();

  final TextEditingController _descriptionController = TextEditingController();

  final TextEditingController _priceController = TextEditingController();
  final firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;

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

                  context.read<ProductBloc>().add(AddProducts(
                        '1',
                        'imageUrl',
                        _sizeController.text,
                        _widthController.text,
                        _heigthController.text,
                        _modelController.text,
                        _materialController.text,
                        _descriptionController.text,
                        _priceController.text,
                      ));

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
                SizeBlockWidget(
                  size: size,
                  sizeController: _sizeController,
                  heigthController: _heigthController,
                  widthController: _widthController,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Модель'),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Picker(
                    pickerController: _modelController,
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
                    pickerController: _materialController,
                    dataList: material,
                  ),
                ),
                const DividerWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Опис'),
                ),
                TextFormFieldWidget(
                  focusNode: widget.descriptionFocusNode,
                  controller: _descriptionController,
                ),
                const DividerWidget(),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: LableText(lableText: 'Ціна'),
                ),
                TextFormFieldWidget(
                  focusNode: widget.priceFocusNode,
                  controller: _priceController,
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
