import 'package:flutter/material.dart';
import 'package:loja_app/Produtos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          AppBar(),
          Container(
            color: Colors.white,
            height: 650,
            width: 380,
            child: ListView(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              scrollDirection: Axis.vertical,
              children: [
                Produto(),
                Produto(),
                Produto(),
                Produto(),
                Produto(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
