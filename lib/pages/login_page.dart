import 'package:flutter/material.dart';
import 'package:projeto_login_page/controlles/login_controller.dart';

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
              TextField(
                decoration: const InputDecoration(labelText: "login"),
                onChanged: _controller.setLogin,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(labelText: "senha"),
                      obscureText: true,
                      onChanged: _controller.setPass,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ValueListenableBuilder(
                  valueListenable: _controller.inLoader,
                  builder: (_, inLoader, __) => inLoader
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            _controller.auth().then((result) {
                              if (result) {
                                Navigator.popAndPushNamed(context, '/home');
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(const SnackBar(
                                  content: Text('Falha ao realizar login'),
                                  duration: Duration(seconds: 5),
                                ));
                              }
                            });
                          },
                          child: const Text('Login'))),
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
