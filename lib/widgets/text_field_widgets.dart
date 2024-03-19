import 'package:flutter/material.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  final String hintText;
  final void Function(String) onChaged;
  const CustomTextFieldWidgets(
      {super.key, required this.hintText, required this.onChaged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChaged,
      decoration: InputDecoration(
        hintText: hintText,
      ),
    );
  }
}
