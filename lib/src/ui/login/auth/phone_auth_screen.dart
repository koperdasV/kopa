import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_bloc.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_event.dart';
import 'package:kopa/core/bloc/phone_auth_bloc/phone_auth_state.dart';
import 'package:kopa/src/ui/login/auth/components/text_field_widget.dart';
import 'package:kopa/src/ui/login/auth/verification_screen.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';
import 'package:kopa/widgets/button_widget.dart';

import '../../../../resources/constant.dart';
import 'components/elipse_widget.dart';
import 'components/logo_widget.dart';

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
                      ButtonWidget(
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
                        child: const Text('Верифікувати'),
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






