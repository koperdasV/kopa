import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_event.dart';
import 'package:kopa/widgets/button_widget.dart';

class PhoneNumberWidget extends StatefulWidget {
  const PhoneNumberWidget({Key? key, required this.phoneNumberController})
      : super(key: key);
  final TextEditingController phoneNumberController;

  @override
  State<PhoneNumberWidget> createState() => _PhoneNumberWidgetState();
}

class _PhoneNumberWidgetState extends State<PhoneNumberWidget> {
  CountryCode _countryCode = CountryCode(code: 'UA', dialCode: '+380');
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _phoneNumberFormKey,
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(right: 50, left: 50, bottom: 34, top: 10),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              controller: widget.phoneNumberController,
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
                hintText: 'Enter your phone number',
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                  fontSize: 14,
                ),
                prefixIcon: CountryCodePicker(
                  onChanged: (countryCode) {
                    setState(() {
                      _countryCode = countryCode;
                    });
                  },
                  initialSelection: 'UA',
                  showFlag: false,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ),
              validator: (value) {
                if (value!.length != 9) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: ButtonWidget(
              onPressed: () {
                if (_phoneNumberFormKey.currentState!.validate()) {
                  _sendOtp(
                    phoneNumber: widget.phoneNumberController.text,
                    context: context,
                  );
                }
              },
              child: const Text('Верифікувати'),
            ),
          ),
        ],
      ),
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    final phoneNumberWithCode = "${_countryCode.dialCode}$phoneNumber";
    context.read<AuthBloc>().add(
          SendOtpToPhoneEvent(
            phoneNumber: phoneNumberWithCode,
          ),
        );
    setState(() {
      widget.phoneNumberController.clear();
    });
  }
}
