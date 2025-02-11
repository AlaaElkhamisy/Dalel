import 'package:dalel/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ForgotPasswordImage extends StatelessWidget {
  const ForgotPasswordImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Image(
        image: ResizeImage(AssetImage(Assets.imagesForgotPassword),
            width: 235, height: 235));
  }
}
