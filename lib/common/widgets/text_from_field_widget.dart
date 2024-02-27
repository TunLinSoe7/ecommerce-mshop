import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    this.controller,
    required this.labelText,
    required this.prefixIcon,
    this.suffixIcon,
  });
  final TextEditingController? controller;
  final String labelText;
  final IconData prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black38,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          labelStyle: const TextStyle(color: Colors.black38),
          prefixIconColor: Colors.black38,
          labelText: labelText,
          prefixIcon: Icon(prefixIcon),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38)),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black38))),
    );
  }
}
