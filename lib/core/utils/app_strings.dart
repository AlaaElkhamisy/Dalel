import 'package:dalel/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppName extends StatelessWidget {
  double size;

  AppName({super.key, this.size = 15});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Dalel",
      style: TextStyle(
          color: AppColors.deepbrown_color,
          fontSize: size,
          fontFamily: "Pacifico"),
    );
  }
}

class Main_Text extends StatelessWidget {
  final String text;
  const Main_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.primary_color, fontSize: 23, fontFamily: "Poppins"),
    );
  }
}

class label_Text extends StatelessWidget {
  final String text;
  const label_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.primary_color, fontSize: 18, fontFamily: "Poppins"),
    );
  }
}

class body_Text extends StatelessWidget {
  final String text;
  const body_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins"),
    );
  }
}

class Big_Text extends StatelessWidget {
  final String text;
  const Big_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: AppColors.black_color,
          fontSize: 23,
          fontFamily: "Poppins",
          fontWeight: FontWeight.bold),
    );
  }
}

class Small_Text extends StatelessWidget {
  final String text;
  const Small_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.deepgrey_color,
        fontSize: 15,
        fontFamily: "Poppins",
      ),
    );
  }
}

class Function_Text extends StatelessWidget {
  final String text;
  const Function_Text({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColors.offwhite_color,
        fontSize: 18,
        fontFamily: "Poppins",
      ),
    );
  }
}
