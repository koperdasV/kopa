import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_event.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_state.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/home/home_screen.dart';
import 'package:kopa/src/ui/login/auth/components/text_field_widget.dart';
import 'package:kopa/widgets/button_widget.dart';

import 'components/elipse_widget.dart';
import 'components/logo_widget.dart';

class PhoneAuth extends StatefulWidget {
  const PhoneAuth({
    Key? key,
    this.phoneNumberController,
  }) : super(key: key);

  final TextEditingController? phoneNumberController;

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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          // Phone Otp Verified. Send User to MainScreenWidget
          if (state is PhoneAuthVerified) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const HomeScreen(),
              ),
            );
          }
          //Show error message if any error occurs while verifying phone number and otp code
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            if (state is Loading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return Center(
              child: Container(
                color: AppColor.backgroundColor,
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
                              phoneNumber: widget.phoneNumberController!.text,
                              context: context,
                            );
                          }
                          // Navigator.pushReplacement(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: ((context) => VerificationScreen(codeController: _codeController,verificationId: state,)),
                          //   ),
                          // );
                        },
                        child: const Text('Верифікувати'),
                      )
                    // else
                    //   VerificationScreen(
                    //       codeController: _codeController,
                    //       verificationId: state.verificationId)
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
    context.read<AuthBloc>().add(
          SendOtpToPhoneEvent(
            phoneNumber: phoneNumber,
          ),
        );
    setState(() {
      widget.phoneNumberController!.clear();
    });
  }
}