import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:jogadores_historicos_do_basquete/components/base_scaffold.dart';
import 'package:jogadores_historicos_do_basquete/components/default_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DefaultInput(
            label: "Login",
            obscureText: false,
            placeholder: 'Digite seu login',
          ),
          const DefaultInput(
            label: "Senha",
            obscureText: true,
            placeholder: 'Digite sua senha',
          ),
          FilledButton(
              onPressed: () {
                context.go("/homepage");
              },
              child: const Text("Login")),
        ],
      ),
    );
  }
}
