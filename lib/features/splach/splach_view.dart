import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

class Splach_View extends StatelessWidget {
  const Splach_View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: AppName(
        size: 50,
      )),
    );
  }
}
