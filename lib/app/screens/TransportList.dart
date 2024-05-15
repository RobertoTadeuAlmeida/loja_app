import 'package:flutter/material.dart';
import 'package:loja_app/app/models/Cards.dart';
import 'package:loja_app/app/screens/transport.dart';

class TransportList extends StatefulWidget {
  const TransportList({super.key});

  @override
  State<TransportList> createState() => _TransportListState();
}

class _TransportListState extends State<TransportList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Cards('produto1','assets/images/Transporte.jpeg'),
          ],
      ),
    );
  }
}
