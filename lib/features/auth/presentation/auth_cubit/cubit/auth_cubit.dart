import 'package:dalel/features/auth/presentation/auth_cubit/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// هنا هنضيف الlogic
class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
