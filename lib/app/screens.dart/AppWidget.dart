import 'package:flutter/material.dart';
import 'package:loja_app/app/models/Cards.dart';
import 'package:loja_app/app/models/tema.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: tema,
      home: Scaffold(
        bottomNavigationBar: NavigationBar(destinations: [
          NavigationDestination(
              icon: Icon(Icons.event_available), label: "eventos"),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.bus_alert_outlined), label: "reservados"),
        ]),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Cards("assets/images/evento.jpg"),
            Cards("assets/images/evento.jpg"),
            Cards("assets/images/evento.jpg"),
            Cards("assets/images/evento.jpg"),
            Cards("assets/images/evento.jpg"),
          ],
        ),
      ),
    );
  }
}
