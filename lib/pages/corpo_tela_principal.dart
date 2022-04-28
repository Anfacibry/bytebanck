import 'package:bytebank/data/transferencia.dart';
import 'package:bytebank/widgets/item_transferencia.dart';
import 'package:flutter/material.dart';

import '../widgets/caixa_de_texto.dart';

class TelaDeCadastro extends StatelessWidget {
  final TextEditingController numeroContaPego = TextEditingController();
  final TextEditingController valorPego = TextEditingController();
  TelaDeCadastro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tranferência"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CaixaDeTexto(
            numeroPego: numeroContaPego,
            labelText: "Número da conta",
            hintText: "1000",
          ),
          CaixaDeTexto(
            icone: true,
            numeroPego: valorPego,
            labelText: "Valor",
            hintText: "0.00",
          ),
          ElevatedButton(
            onPressed: () {
              final int? numeroConta = int.tryParse(numeroContaPego.text);
              final double? valorConta = double.tryParse(valorPego.text);

              if (numeroConta != null && valorConta != null) {
                final transferenciaRecebida = ItemTransferencia(
                    transferencia: Transferencia(
                        numeroConta: numeroConta, valor: valorConta));

                Navigator.pop(
                  context,
                  transferenciaRecebida,
                );
              }
            },
            child: const Text("Confirmar"),
            /*style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 99, 161, 27),
            ),*/
          ),
        ],
      ),
    );
  }
}
