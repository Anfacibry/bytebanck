import 'package:bytebank/pages/principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ByteBank());

class ByteBank extends StatelessWidget {
  const ByteBank({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ByteBank",
      theme: ThemeData().copyWith(
        primaryColor: Colors.green,
      ),
      home: const TelaPincipal(),
    );
  }
}
