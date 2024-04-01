import 'package:flutter/material.dart';
import 'package:loja_app/app/models/Cards.dart';
import 'package:loja_app/app/models/tema.dart';
import 'package:loja_app/app/screens/Produtos.dart';
import 'package:loja_app/app/screens/TransportList.dart';
import 'package:loja_app/app/screens/transport.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: tema,
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home_screen(),
        '/p': (context) => Produtos(),
        '/tl': (context) => TransportList(),
        '/t' : (context) => Transport(),
      },
    );
  }
}

class Home_screen extends StatelessWidget {
  const Home_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          selectedIndex: 1,
          destinations: [
            NavigationDestination(
              tooltip: '/home',
              icon: Icon(Icons.event_available),
              label: "eventos",
            ),
            NavigationDestination(
                tooltip: '/tl', icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                tooltip: '/p',
                icon: Icon(Icons.bus_alert_outlined),
                label: "reservados"),
          ]),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Cards("assets/images/evento.jpg"),


        ],
      ),
    );
  }
}
