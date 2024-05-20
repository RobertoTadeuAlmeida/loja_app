import 'package:flutter/material.dart';
import 'package:loja_app/app/screens/transport.dart';
import 'package:path/path.dart';


class Functions {
     verificPag <bool> (String image, bool textButon, context) {
      final Transport transporte = Transport();
            print('pagamento ${transporte.pagamento}');

      if (!transporte.pagamento) {
        image == 'assets/images/Transporte.jpeg'
            ? Navigator.of(context).pushNamed('/t')
            : Navigator.of(context).pushNamed('/p');
      } else {
        print('pagamento ${transporte.pagamento}');
        return textButon;


      }
      ;  }

}