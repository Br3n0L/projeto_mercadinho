import 'package:flutter/material.dart';
import 'package:projeto_login_page/controlles/login_controller.dart';

class CustomLoginButtonComponent extends StatelessWidget {
  final LoginController loginController;
  CustomLoginButtonComponent({super.key, required this.loginController});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: loginController.inLoader,
        builder: (_, inLoader, __) => inLoader
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: () {
                  loginController.auth().then((result) {
                    if (result) {
                      Navigator.popAndPushNamed(context, '/home');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text('Falha ao realizar login'),
                        duration: Duration(seconds: 5),
                      ));
                    }
                  });
                },
                child: const Text('Login')));
  }
}
