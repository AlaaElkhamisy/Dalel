import 'package:dalel/core/function/navigation.dart';
import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              customNavigation(context, "/signUp");
            },
            icon: const Icon(Icons.login_outlined),
          )
        ],
      ),
    );
  }
}
