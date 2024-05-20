import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:loja_app/app/back-end/functions.dart';
import 'package:loja_app/app/screens/Produtos.dart';
import 'package:loja_app/app/screens/transport.dart';

class Cards extends StatefulWidget {
  final String name;
  final String image;

  const Cards(this.name, this.image, {super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  bool toque = false;
  late bool textButon = false;

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
                    fit: BoxFit.cover, image: AssetImage(widget.image)),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                border: Border.all(color: Colors.blueGrey),
              ),
              child: Container(
                child: FloatingActionButton.extended(
                  heroTag: 'evento',
                  onPressed: () {
                    Functions functions = Functions();
                    functions.verificPag(widget.image, textButon, context);
                    // final Transport transporte = Transport();
                    // print('pagamento ${transporte.pagamento}');
                    //
                    // if (!transporte.pagamento) {
                    //   widget.image == 'assets/images/Transporte.jpeg'
                    //       ? Navigator.of(context).pushNamed('/t')
                    //       : Navigator.of(context).pushNamed('/p');
                    // } else {
                    //   print('pagamento ${transporte.pagamento}');
                    //   textButon = true;
                    //   print(textButon);
                    // }
                    // ;
                  },
                  label: Text(textButon ? 'Nao vou mais' : 'Eu vou!'),
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
                border: Border.all(color: Colors.blueGrey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Atraçoes:"),
                  FloatingActionButton.extended(
                    heroTag: 'extended',
                    onPressed: () {
                      setState(() {
                        toque = !toque;
                      });
                    },
                    label: Icon(Icons.arrow_downward_outlined),
                  )
                ],
              )),
          // Padding(
          //   padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          //   child: Container(
          //     height: 8,
          //     width: 350,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(5),
          //       color: Colors.black,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
