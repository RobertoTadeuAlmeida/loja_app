import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  const Produto({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        children: [
          Container(
              alignment: Alignment.bottomRight,
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black)),
              child: Container(
                child: FloatingActionButton(
                  onPressed: () {},
                ),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Container(
              height: 8,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.black12),
              ),
              child: Divider(
                height: 5,
                thickness: 8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
