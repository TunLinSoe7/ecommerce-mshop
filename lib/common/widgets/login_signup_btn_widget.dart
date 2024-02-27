import 'package:flutter/material.dart';
import 'package:mshop/utils/constants/sizes.dart';

class LoginSingUpBtnWidget extends StatelessWidget {
  const LoginSingUpBtnWidget({
    required this.text,
    this.borderRadius = 5,
    super.key,
    this.onPressed,
  });
  final String text;
  final double borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(borderRadius)),
      child: MaterialButton(
        splashColor: Colors.white,
        padding: const EdgeInsets.all(defaultPadding - 2),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
