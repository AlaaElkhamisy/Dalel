//هنا هنضيف ال States
class AuthState {}

final class AuthInitial extends AuthState {}

final class SignUpLoadingState extends AuthState {}

final class SignUpSuccessState extends AuthState {}

final class SignUpFailuerState extends AuthState {
  final String errMessage;

  SignUpFailuerState({required this.errMessage});
}

final class TermsAndConditionUpdateState extends AuthState {}
