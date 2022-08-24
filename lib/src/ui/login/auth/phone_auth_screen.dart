import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_event.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_state.dart';
import 'package:kopa/src/ui/login/auth/verification_screen.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';

import '../../../../constant.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({
    Key? key,
    required this.phoneNumberController,
  }) : super(key: key);

  final TextEditingController phoneNumberController;

  @override
  State<PhoneAuth> createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  late TextEditingController _phoneNumberController;
  late TextEditingController _codeController;
  
  @override
  void initState() {
    _phoneNumberController = TextEditingController();
    _codeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _phoneNumberFormKey,
      body: BlocListener<PhoneAuthBloc, PhoneAuthState>(
        listener: (context, state) {
          // Phone Otp Verified. Send User to MainScreenWidget
          if (state is PhoneAuthVerified) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const MainScreenWidget(),
              ),
            );
          }
          //Show error message if any error occurs while verifying phone number and otp code
          if (state is PhoneAuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: BlocBuilder<PhoneAuthBloc, PhoneAuthState>(
          builder: (context, state) {
            if (state is PhoneAuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Container(
                color: AppColor.kPrimaryColor,
                child: Column(
                  children: [
                    const LogoWidget(),
                    const EllipseWidget(),
                    const SizedBox(height: 30),
                    TextFieldWidget(
                      controller: widget.phoneNumberController,
                      keyboardType: TextInputType.phone,
                      errorText: 'Номер введено не правильно',
                      hintText: '+38',
                    ),
                    if (state is! PhoneAuthCodeSentSuccess)
                      ButtonVerificationWidget(
                        phoneNumberController: _phoneNumberController,
                        onPressed: () {
                          if (_phoneNumberFormKey.currentState!.validate()) {
                            _sendOtp(
                              phoneNumber: widget.phoneNumberController.text,
                              context: context,
                            );
                          }
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: ((context) => const VerificationScreen()),
                          //   ),
                          // );
                        },
                        text: 'Верифікувати',
                      )
                    else
                      VerificationScreen(
                          codeController: _codeController,
                          verificationId: state.verificationId)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    //final phoneNumberWithCode = "${_countryCode.dialCode}$phoneNumber";
    context.read<PhoneAuthBloc>().add(
          SendOtpToPhoneEvent(
            phoneNumber: phoneNumber,
          ),
        );
    setState(() {
      widget.phoneNumberController.clear();
    });
  }
}

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 4,
      child: Padding(
        padding: const EdgeInsets.only(top: 104),
        child: Image.asset('images/logo.png'),
      ),
    );
  }
}

class EllipseWidget extends StatelessWidget {
  const EllipseWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        child: Stack(
          children: [
            Image.asset('images/ellipse.png'),
            const Positioned(
              left: 76,
              top: 36,
              child: Text(
                'Вхід',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldWidget extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  const TextFieldWidget({
    Key? key,
    this.hintText,
    this.obscureText = false,
    this.keyboardType = TextInputType.name,
    this.errorText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, bottom: 34, top: 10),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        textInputAction: TextInputAction.next,
        cursorColor: Colors.white,
        style: const TextStyle(
          fontSize: 14,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 8, horizontal: 23),
          // errorText: errorText,
          // errorStyle: const TextStyle(fontSize: 9),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}

class ButtonVerificationWidget extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final TextEditingController? phoneNumberController;

  const ButtonVerificationWidget({
    Key? key,
    required this.text,
    required this.onPressed,
    this.phoneNumberController,
  }) : super(key: key);

  @override
  State<ButtonVerificationWidget> createState() =>
      _ButtonVerificationWidgetState();
}

class _ButtonVerificationWidgetState extends State<ButtonVerificationWidget> {
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Padding(
      key: _phoneNumberFormKey,
      padding: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
      child: SizedBox(
        height: 45,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50))),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(12, 205, 230, 1)),
          ),
          child: Text(widget.text),
        ),
      ),
    );
  }
}
