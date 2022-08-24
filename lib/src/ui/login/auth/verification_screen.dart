import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_event.dart';

import '../../../../constant.dart';
import 'phone_auth_screen.dart';

class VerificationScreen extends StatelessWidget {
  VerificationScreen({
    Key? key,
    required this.codeController,
    required this.verificationId,
  }) : super(key: key);

  final TextEditingController codeController;
  final String verificationId;
  final GlobalKey<FormState> _otpFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _otpFormKey,
      body: Center(
        child: Container(
          color: AppColor.kPrimaryColor,
          child: Column(
            children: [
              const LogoWidget(),
              const EllipseWidget(),
              const SizedBox(height: 30),
              TextFieldWidget(
                controller: codeController,
                keyboardType: TextInputType.number,
                errorText: 'Код підтвердження введено не правильно',
                obscureText: true,
                hintText: 'Код підтвердження',
              ),
              ButtonVerificationWidget(
                onPressed: () {
                  if (_otpFormKey.currentState!.validate()) {
                    _verifyOtp(context: context);
                  }
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: ((context) => const FillingInfo())));
                },
                text: 'Далі',
              )
            ],
          ),
        ),
      ),
    );
  }

  void _verifyOtp({required BuildContext context}) {
    context.read<PhoneAuthBloc>().add(VerifySentOtpEvent(
        otpCode: codeController.text, verificationId: verificationId));
    codeController.clear();
  }
}
