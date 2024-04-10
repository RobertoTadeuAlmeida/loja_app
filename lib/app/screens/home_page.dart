import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          iconeMenu(Icon(Icons.home)),
          iconeMenu(Icon(Icons.event))
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          iconeMenu(Icon(Icons.bus_alert)),
          iconeMenu(Icon(Icons.settings))
        ]),
      ],
    );
  }
}

class iconeMenu extends StatelessWidget {
  Icon icone;

  iconeMenu(this.icone, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: icone,
      decoration: BoxDecoration(
          color: Colors.blueGrey, borderRadius: BorderRadius.circular(5)),
      height: 140,
      width: 140,
    );
  }
}
