import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_bloc.dart';
import 'package:kopa/core/blocs/auth_bloc/auth_event.dart';
import 'package:kopa/widgets/button_widget.dart';

import 'components/text_field_widget.dart';

class ProfileScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 70),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      "${user?.photoURL}",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Text(
                      "${user?.displayName}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const TextFieldWidget(
              lableText: 'Контактний номер',
              keyboardType: TextInputType.phone,
            ),
            const TextFieldWidget(
              lableText: 'Місто',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: ButtonWidget(
                onPressed: () {
                  context.read<AuthBloc>().add(SignOutRequested());
                },
                child: const Text(
                  'Вийти',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
