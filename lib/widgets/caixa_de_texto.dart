import 'package:flutter/material.dart';

class CaixaDeTexto extends StatelessWidget {
  final String labelText;
  final String hintText;
  const CaixaDeTexto({
    required this.labelText,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
      child: TextField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
      ),
    );
  }
}
