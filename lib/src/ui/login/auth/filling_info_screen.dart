import 'package:flutter/material.dart';
import 'package:kopa/src/ui/login/auth/components/text_field_widget.dart';
import 'package:kopa/widgets/button_widget.dart';

import '../../../../resources/constant.dart';
import 'components/elipse_widget.dart';

class FillingInfo extends StatelessWidget {
  const FillingInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: AppColor.kPrimaryColor,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: EllipseWidget(),
              ),
              const TextFieldWidget(
                hintText: "Ім'я",
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              const TextFieldWidget(
                hintText: 'Прізвище',
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              const TextFieldWidget(
                hintText: 'Місто',
                errorText: 'Поле не повинне бути порожнім або містити цифри',
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 250),
                  child: ButtonWidget(
                    onPressed: () {
                      //   Navigator.pushReplacement(
                      // context,
                      // MaterialPageRoute(
                      //     builder: ((context) => const VerificationScreen())));
                    },
                    child: const Text('Готово'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
