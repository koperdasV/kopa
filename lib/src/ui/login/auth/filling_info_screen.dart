import 'package:flutter/material.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/src/ui/login/auth/components/text_field_widget.dart';
import 'package:kopa/widgets/button_widget.dart';

import 'components/elipse_widget.dart';

class FillingInfo extends StatelessWidget {
  const FillingInfo({
    Key? key,
    this.nameController,
    this.surnameController,
    this.cityController,
  }) : super(key: key);

  final TextEditingController? nameController;
  final TextEditingController? surnameController;
  final TextEditingController? cityController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: AppColor.backgroundColor,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: EllipseWidget(),
              ),
              TextFieldWidget(
                controller: nameController,
                hintText: "Ім'я",
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              TextFieldWidget(
                controller: surnameController,
                hintText: 'Прізвище',
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              TextFieldWidget(
                controller: cityController,
                hintText: 'Місто',
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 250),
                child: ButtonWidget(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const HomeScreen())));
                  },
                  child: const Text('Готово'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
