import 'package:flutter/material.dart';
import 'package:projeto_login_page/components/login/custom_login_components.dart';
import 'package:projeto_login_page/controlles/login_controller.dart';
import 'package:projeto_login_page/widgets/custom_text_field_widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    LoginController _controller = LoginController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(28),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFe8b12f), Color(0xFFd2e9f0)],
              begin: Alignment.bottomRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo02.png'),
              CustomTextFieldWidgets(
                label: 'Login',
                onChaged: _controller.setLogin,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldWidgets(
                label: 'Senha',
                onChaged: _controller.setPass,
                obscureText: true,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomLoginButtonComponent(
                loginController: _controller,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text("Ainda não é nosso cliente, cadastre-se"),
            ],
          ),
        ),
      ),
    );
  }
}
