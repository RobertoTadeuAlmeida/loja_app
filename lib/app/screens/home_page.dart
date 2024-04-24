import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.abc),
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blueGrey))),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc)),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc))
        ],
      ),
    );
  }
}
