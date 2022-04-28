import 'package:bytebank/pages/corpo_tela_principal.dart';
import 'package:bytebank/widgets/item_transferencia.dart';
import 'package:flutter/material.dart';

class TelaPincipal extends StatefulWidget {
  const TelaPincipal({Key? key}) : super(key: key);

  @override
  State<TelaPincipal> createState() => _TelaPincipalState();
}

class _TelaPincipalState extends State<TelaPincipal> {
  final List<ItemTransferencia> _listaCriada = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Transferencias"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _listaCriada.length,
        itemBuilder: (context, indice) {
          final ItemTransferencia transferencia = _listaCriada[indice];
          return transferencia;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<ItemTransferencia?> future = Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => TelaDeCadastro(),
            ),
          );
          future.then((transferencia) {
            if (transferencia != null) {
              setState(() {
                _listaCriada.add(transferencia);
              });
            }
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
