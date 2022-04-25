import 'package:flutter/material.dart';

import 'caixa_de_texto.dart';

class CorpoTelaPrincipal extends StatelessWidget {
  const CorpoTelaPrincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CaixaDeTexto(labelText: "Número da conta", hintText: "1000"),
        const CaixaDeTexto(labelText: "Valor", hintText: "0.00"),
        ElevatedButton(
          onPressed: () {},
          child: const Text("Confirmar"),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 99, 161, 27),
          ),
        ),
      ],
    );
  }
}
