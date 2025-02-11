import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// هنا هنضيف الlogic
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  String? firstName;
  String? lastName;
  String? email;
  String? password;
  bool? obscurePasswordTextValue = true;
  GlobalKey<FormState> signupFormKey = GlobalKey();
  GlobalKey<FormState> signInFormKey = GlobalKey();
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey();
  bool? termsAndConditionCheckBox = false;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      await addUserProfile();
      await verifyAccout();
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        emit(SignUpFailuerState(
            errMessage: "The password provided is too weak"));
      } else if (e.code == "email-already-in-use") {
        emit(SignUpFailuerState(
            errMessage: "The account already exists for that email"));
      } else if (e.code == "invalid-email") {
        emit(SignUpFailuerState(errMessage: "The email is invalid."));
      } else {
        emit(SignUpFailuerState(errMessage: e.code));
      }
    } catch (e) {
      emit(SignUpFailuerState(errMessage: e.toString()));
    }
  }

  updateTremsAndConditionCheckBox({required newValue}) {
    termsAndConditionCheckBox = newValue;
    emit(TermsAndConditionUpdateState());
  }

  verifyAccout() async {
    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
  }

  obscurePasswordText() {
    if (obscurePasswordTextValue == true) {
      obscurePasswordTextValue = false;
    } else {
      obscurePasswordTextValue = true;
    }
    emit(ObscurePasswordTextUpdateState());
  }

  signInWithEmailAndPassword() async {
    try {
      emit(SignInLoadingState());
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      emit(SignInSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailuerState(errMessage: 'No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailuerState(
            errMessage: 'Wrong password provided for that user.'));
      } else {
        emit(SignInFailuerState(errMessage: 'Email or password not correct'));
      }
    } catch (e) {
      emit(SignInFailuerState(errMessage: e.toString()));
    }
  }

  resetPasswordWithLink() async {
    try {
      emit(ResetPasswordLoadingState());
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email!);
      emit(ResetPasswordSuccessState());
    } catch (e) {
      emit(ResetPasswordFailuerState(errMessage: e.toString()));
    }
  }

  addUserProfile() async {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    await users.add({
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
    });
  }
}
