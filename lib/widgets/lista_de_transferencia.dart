import 'package:flutter/material.dart';

import '../data/transferencia.dart';
import 'item_transferencia.dart';

class ListaDeTransferencia extends StatelessWidget {
  const ListaDeTransferencia({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(
          transferencia: Transferencia(valor: 100, numeroConta: 1000),
        ),
        ItemTransferencia(
          transferencia: Transferencia(valor: 200, numeroConta: 1001),
        ),
        ItemTransferencia(
          transferencia: Transferencia(valor: 300, numeroConta: 2000),
        ),
      ],
    );
  }
}
