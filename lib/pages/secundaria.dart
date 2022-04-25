import 'package:flutter/material.dart';

import '../widgets/lista_de_transferencia.dart';

class TelaPincipal extends StatelessWidget {
  const TelaPincipal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferencias"),
        centerTitle: true,
      ),
      body: const ListaDeTransferencia(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
