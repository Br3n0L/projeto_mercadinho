import 'package:flutter/material.dart';

class CustomTextFieldWidgets extends StatelessWidget {
  final String label;
  final void Function(String) onChaged;
  final bool? obscureText;
  const CustomTextFieldWidgets(
      {super.key,
      required this.label,
      required this.onChaged,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChaged,
      decoration: InputDecoration(
        label: Text(label),
      ),
      obscureText: false,
    );
  }
}
