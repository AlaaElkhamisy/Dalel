import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// هنا هنضيف الlogic
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  late String? firstName;
  late String? lastName;
  late String? email;
  late String? password;
  signUpWithEmailAndPassword() async {
    try {
      emit(SignUpLoadingState());
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email!, password: password!);
      emit(SignUpSuccessState());
    } on FirebaseAuthException catch (e) {
      if (e.code == "weak-password") {
        emit(SignUpFailuerState(
            errMessage: "The password provided is too weak"));
      } else if (e.code == "email-already-in-use") {
        emit(SignUpFailuerState(
            errMessage: "The account already exists for that email"));
      }
    } catch (e) {
      emit(SignUpFailuerState(errMessage: e.toString()));
    }
  }
}
