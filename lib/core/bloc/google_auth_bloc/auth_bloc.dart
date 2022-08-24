import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_event.dart';
import 'package:kopa/core/bloc/google_auth_bloc/auth_state.dart';

import '../../data/google_sign_in.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final GoogleAuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(UnAuthenticated()) {
    on<GoogleSignInRequested>(_googleSignIn);
    on<SignOutRequested>(_signOut);
  }
  // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated

  void _googleSignIn(
      GoogleSignInRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await authRepository.googleSignIn();
      emit(Authenticated());
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(UnAuthenticated());
    }
  }

  // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
  void _signOut(SignOutRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    await authRepository.signOut();
    emit(UnAuthenticated());
  }
}
