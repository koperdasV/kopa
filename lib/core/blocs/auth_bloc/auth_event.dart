import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AuthEvent extends Equatable {
  const AuthEvent();
  @override
  List<Object> get props => [];
}

// When the user signing in with google this event is called and the [AuthRepository] is called to sign in the user
class GoogleSignInRequested extends AuthEvent{}

// When the user signing out this event is called and the [AuthRepository] is called to sign out the user
class SignOutRequested extends AuthEvent{}

class SendUserDataToDB extends AuthEvent {}

class SendOtpToPhoneEvent extends AuthEvent {
  final String phoneNumber;

  const SendOtpToPhoneEvent({required this.phoneNumber});

  @override
  List<Object> get props => [phoneNumber];
}

class VerifySentOtpEvent extends AuthEvent {
  final String otpCode;
  final String verificationId;

  const VerifySentOtpEvent({
    required this.otpCode,
    required this.verificationId,
  });

  @override
  List<Object> get props => [otpCode, verificationId];
}

class OnPhoneOtpSent extends AuthEvent {
  final String verificationId;
  final int? token;

  const OnPhoneOtpSent({
    required this.verificationId,
    required this.token,
  });

  @override
   List<Object> get props => [verificationId];
}
/*This event will be triggered when an error occurs while sending the OTP to the user's phone number. 
  This can be due to network issues or firebase's error.*/ 
class OnPhoneAuthErrorEvent extends AuthEvent {
   final String error;
   const OnPhoneAuthErrorEvent({required this.error});

   @override
   List<Object> get props => [error];
}

//This event will be triggered when the verification of the OTP is successful.
class OnPhoneAuthVerificationCompleteEvent extends AuthEvent {
   final AuthCredential credential;
   const OnPhoneAuthVerificationCompleteEvent({
     required this.credential,
   });
}
