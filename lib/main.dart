import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:loja_app/app/screens.dart/Produtos.dart';
import 'package:loja_app/app/screens.dart/TransportList.dart';
import 'package:loja_app/app/screens.dart/transport.dart';
import 'app/screens.dart/AppWidget.dart';

void main() {
  Animate.restartOnHotReload = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppWidget();
  }
}


