import 'package:flutter/material.dart';
import 'package:loja_app/app/screens/transport.dart';
import 'package:path/path.dart';

class Functions {
  verificPag(String image, String textButton, context) {
    final Transport transporte = Transport();
    print('pagamento ${transporte.pagamento}');

    if (!transporte.pagamento) {
      image == String
          ? Navigator.of(context).pushNamed('/t')
          : Navigator.of(context).pushNamed('/p');
      textButton = 'Não vou mais';
    } else {
      print('pagamento ${transporte.pagamento}');
      textButton = 'Eu vou!';
    }
    ;
  }

  void eventOrBus (String image){

  }
}
