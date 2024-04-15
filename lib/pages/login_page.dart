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
  final TextEditingController user = TextEditingController();
  final TextEditingController pass = TextEditingController();
  LoginController _controller = LoginController();
  @override
  Widget build(BuildContext context) {
    LoginController _controller = LoginController();
    final size = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size,
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
                controller: user,
                label: 'Login',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextFieldWidgets(
                controller: pass,
                label: 'Senha',
                obscureText: true,
              ),
              const SizedBox(
                height: 50,
              ),
              CustomLoginButtonComponent(
                onpressed: onPressed(),
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

  onPressed() {
    _controller.auth(user: user.text, pass: pass.text).then((result) {
      if (result) {
        Navigator.pushNamed(context, '/home');
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Falha ao realizar login'),
          duration: Duration(seconds: 5),
        ));
      }
    });
  }
}
