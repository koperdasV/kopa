import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_event.dart';
import 'package:kopa/widgets/button_widget.dart';

class OtpWidget extends StatelessWidget {
  OtpWidget(
      {Key? key, required this.codeController, required this.verificationId})
      : super(key: key);
  final TextEditingController codeController;
  final String verificationId;
  final GlobalKey<FormState> _otpFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _otpFormKey,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 50, left: 50, bottom: 34, top: 10),
            child: TextFormField(
              keyboardType: TextInputType.number,
              controller: codeController,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 23),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
                hintText: 'Введіть код верифікації',
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              validator: (value) {
                if (value!.length != 6) {
                  return 'Please enter valid OTP';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ButtonWidget(
              onPressed: () {
                if (_otpFormKey.currentState!.validate()) {
                  _verifyOtp(context: context);
                }
              },
              child: const Text('Далі'),
            ),
          ),
        ],
      ),
    );
  }

  void _verifyOtp({required BuildContext context}) {
    context.read<AuthBloc>().add(VerifySentOtpEvent(
        otpCode: codeController.text, verificationId: verificationId));
    codeController.clear();
  }
}
