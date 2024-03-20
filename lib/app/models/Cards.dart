import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:loja_app/app/screens.dart/Produtos.dart';

class Cards extends StatefulWidget {
  String foto;

  Cards(this.foto, {super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool toque = false;

  double tamanho = 150;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      child: Column(
        children: [
          Container(
              alignment: Alignment.centerRight,
              width: 350,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.foto)),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: Colors.black),
              ),
              child: Container(
                child: FloatingActionButton.extended(
                  onPressed: () {},
                  label: Text("Eu vou!"),
                ),
              )),
          AnimatedContainer(
              duration: 300.milliseconds,
              alignment: Alignment.topLeft,
              width: 350,
              height: toque ? tamanho : 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Atraçoes:"),
                  FloatingActionButton.extended(
                    onPressed: () {
                      setState(() {
                        toque = !toque;
                      });
                    },
                    label: Icon(Icons.arrow_downward_outlined),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Container(
              height: 8,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}