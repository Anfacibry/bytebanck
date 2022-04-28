import 'package:flutter/material.dart';

class CaixaDeTexto extends StatelessWidget {
  final bool icone;
  final TextEditingController numeroPego;
  final String labelText;
  final String hintText;
  const CaixaDeTexto({
    this.icone = false,
    required this.numeroPego,
    required this.labelText,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 10.0, 16.0, 0.0),
      child: TextField(
        controller: numeroPego,
        decoration: InputDecoration(
          icon: icone
              ? const Icon(
                  Icons.monetization_on,
                  color: Color.fromARGB(255, 99, 161, 27),
                )
              : null,
          border: const OutlineInputBorder(),
          labelText: labelText,
          hintText: hintText,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
