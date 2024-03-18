import 'package:flutter/material.dart';
import 'package:loja_app/app/screens.dart/Produtos.dart';
import 'app/screens.dart/AppWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Produtos();
  }
}


