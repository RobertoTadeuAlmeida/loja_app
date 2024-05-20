import 'package:flutter/material.dart';
import 'package:loja_app/app/models/Cards.dart';

class ProdutoList extends StatefulWidget {
  const ProdutoList({super.key});

  @override
  State<ProdutoList> createState() => _State();
}

class _State extends State<ProdutoList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Cards('evento', 'assets/images/evento.jpg')

      ],
    );
  }
}
