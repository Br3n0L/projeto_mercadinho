import 'package:flutter/material.dart';
import 'package:projeto_login_page/controlles/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final Function()? onpressed;
  const CustomLoginButtonComponent({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onpressed, child: const Text('Login'));
  }
}
