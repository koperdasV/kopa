import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_state.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/login/auth/components/otp_widget.dart';
import 'package:kopa/src/ui/login/auth/components/phone_number_widget.dart';
import 'package:kopa/src/ui/login/auth/filling_info_screen.dart';

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
          if (state is Authenticated) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const FillingInfo(),
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
                child: Column(children: [
                  const LogoWidget(),
                  const EllipseWidget(),
                  const SizedBox(height: 30),
                  if (state is! PhoneAuthCodeSentSuccess)
                    PhoneNumberWidget(
                        phoneNumberController: _phoneNumberController,
                        )
                  else
                    OtpWidget(
                      codeController: _codeController,
                      verificationId: state.verificationId,
                    ),
                ]),
              ),
            );
          },
        ),
      ),
    );
  }
}
