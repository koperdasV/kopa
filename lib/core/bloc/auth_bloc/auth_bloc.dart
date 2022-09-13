import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kopa/core/bloc/auth_bloc/auth_event.dart';
import 'package:kopa/core/bloc/auth_bloc/auth_state.dart';
import 'package:kopa/core/data/auth_repository.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  final auth = FirebaseAuth.instance;

  AuthBloc({
    required this.authRepository,
  }) : super(UnAuthenticated()) {
    on<GoogleSignInRequested>(_googleSignIn);
    on<SignOutRequested>(_signOut);
    // When user clicks on send otp button then this event will be fired
    on<SendOtpToPhoneEvent>(_onSentOtp);
    // After receiving the otp, When user clicks on verify otp button then this event will be fired
    on<VerifySentOtpEvent>(_onVerifyOtp);

    // When the firebase sends the code to the user's phone, this event will be fired
    on<OnPhoneOtpSent>((event, emit) =>
        emit(PhoneAuthCodeSentSuccess(verificationId: event.verificationId)));

    // When any error occurs while sending otp to the user's phone, this event will be fired
    on<OnPhoneAuthErrorEvent>(
        (event, emit) => emit(AuthError(error: event.error)));

    // When the otp verification is successful, this event will be fired
    on<OnPhoneAuthVerificationCompleteEvent>(_loginWithCredential);
  }
  // When User Presses the Google Login Button, we will send the GoogleSignInRequest Event to the AuthBloc to handle it and emit the Authenticated State if the user is authenticated

  Future<void> _googleSignIn(
      GoogleSignInRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await authRepository.googleSignIn();
      emit(Authenticated());
    } catch (e) {
      //emit();
      emit(UnAuthenticated());
    }
  }

  // When User Presses the SignOut Button, we will send the SignOutRequested Event to the AuthBloc to handle it and emit the UnAuthenticated State
  Future<void> _signOut(SignOutRequested event, Emitter<AuthState> emit) async {
    emit(Loading());
    await authRepository.signOut();
    emit(UnAuthenticated());
  }

  Future<void> _onSentOtp(
      SendOtpToPhoneEvent event, Emitter<AuthState> emit) async {
    emit(Loading());
    try {
      await authRepository.verifyPhone(
          phoneNumber: event.phoneNumber,
          verificationCompleted: (PhoneAuthCredential credential) async {
            // On [verificationComplete], we will get the credential from the firebase  and will send it to the [OnPhoneAuthVerificationCompleteEvent] event to be handled by the bloc and then will emit the [PhoneAuthVerified] state after successful login
            add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
          },
          codeSent: (String verificationId, int? resendToken) {
            // On [codeSent], we will get the verificationId and the resendToken from the firebase and will send it to the [OnPhoneOtpSent] event to be handled by the bloc and then will emit the [OnPhoneAuthVerificationCompleteEvent] event after receiving the code from the user's phone
            add(OnPhoneOtpSent(
              verificationId: verificationId,
              token: resendToken,
            ));
          },
          verificationFailed: (FirebaseAuthException e) {
            // On [verificationFailed], we will get the exception from the firebase and will send it to the [OnPhoneAuthErrorEvent] event to be handled by the bloc and then will emit the [PhoneAuthError] state in order to display the error to the user's screen
            add(OnPhoneAuthErrorEvent(error: e.code));
          },
          codeAutoRetrievalTimeout: (String verificationId) {});
    } catch (e) {
      emit(AuthError(error: e.toString()));
    }
  }

  Future<void> _onVerifyOtp(
      VerifySentOtpEvent event, Emitter<AuthState> emit) async {
    try {
      emit(Loading());
      // After receiving the otp, we will verify the otp and then will create a credential from the otp and verificationId and then will send it to the [OnPhoneAuthVerificationCompleteEvent] event to be handled by the bloc and then will emit the [PhoneAuthVerified] state after successful login
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: event.verificationId,
        smsCode: event.otpCode,
      );
      add(OnPhoneAuthVerificationCompleteEvent(credential: credential));
    } catch (e) {
      emit(AuthError(error: e.toString()));
    }
  }

  Future<void> _loginWithCredential(OnPhoneAuthVerificationCompleteEvent event,
      Emitter<AuthState> emit) async {
    // After receiving the credential from the event, we will login with the credential and then will emit the [PhoneAuthVerified] state after successful login
    try {
      await auth.signInWithCredential(event.credential).then((user) {
        if (user.user != null) {
          emit(Authenticated());
        }
      });
    } on FirebaseAuthException catch (e) {
      emit(AuthError(error: e.code));
    } catch (e) {
      emit(AuthError(error: e.toString()));
    }
  }
}
