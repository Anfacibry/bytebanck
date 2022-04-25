import 'package:flutter/material.dart';
import '../data/transferencia.dart';

class ItemTransferencia extends StatelessWidget {
  final Transferencia transferencia;
  const ItemTransferencia({
    required this.transferencia,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on),
        title: Text(transferencia.valor.toString()),
        subtitle: Text(transferencia.numeroConta.toString()),
      ),
    );
  }
}
