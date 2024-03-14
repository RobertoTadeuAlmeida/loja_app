import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        children: [
          Container(color: Colors.black, width: 350, height: 150,),
          Divider(
            height: 30,
            thickness: 10,
          ),
        ],
      ),
    );
  }
}
