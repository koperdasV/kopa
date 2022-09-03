import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_event.dart';
import 'package:kopa/widgets/button_widget.dart';

class ProfileScreen extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (user != null) {
      return Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Row(
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
            const TextField(),
            const TextField(),
            ButtonWidget(
              onPressed: () {
                context.read<AuthBloc>().add(SignOutRequested());
              },
              child: const Text('Вихід'),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
