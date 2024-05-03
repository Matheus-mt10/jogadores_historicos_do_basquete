import 'package:flutter/material.dart';

class DefaultInput extends StatelessWidget {
  const DefaultInput({
    super.key,
    required this.label,
    required this.obscureText,
    required this.placeholder,
  });

  final String label;
  final bool obscureText;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: label,
            labelStyle: const TextStyle(fontSize: 18),
            hintText: placeholder),
      ),
    );
  }
}
