import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_state.dart';
import 'package:kopa/resources/constant.dart';
import 'package:kopa/src/ui/login/auth/components/otp_widget.dart';
import 'package:kopa/src/ui/login/auth/components/text_field_widget.dart';
import 'package:kopa/src/ui/login/auth/filling_info_screen.dart';
import 'package:kopa/src/ui/main/main_screen_widget.dart';

import 'components/elipse_widget.dart';
import 'components/logo_widget.dart';

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
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is PhoneAuthCodeSentSuccess) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const FillingInfo(),
              ),
            );
          }
          if (state is PhoneAuthVerified) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => const MainScreenWidget(),
              ),
            );
          }
          if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: Center(
          child: Container(
            color: AppColor.backgroundColor,
            child: Column(
              children: [
                const LogoWidget(),
                const EllipseWidget(),
                const SizedBox(height: 30),
                OtpWidget(
                  codeController: codeController,
                  verificationId: verificationId,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
