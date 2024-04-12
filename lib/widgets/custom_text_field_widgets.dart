import 'package:flutter/material.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  final String label;
  final void Function(String)? onChaged;
  final bool? obscureText;
  final TextEditingController controller;
  const CustomTextFieldWidgets(
      {super.key,
      required this.label,
      this.onChaged,
      this.obscureText = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChaged,
      decoration: InputDecoration(
        label: Text(label),
      ),
      obscureText: false,
    );
  }
}
