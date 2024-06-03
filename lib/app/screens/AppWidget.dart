import 'package:flutter/material.dart';
import 'package:loja_app/app/models/Cards.dart';
import 'package:loja_app/app/models/tema.dart';
import 'package:loja_app/app/screens/Produtos.dart';
import 'package:loja_app/app/screens/TransportList.dart';
import 'package:loja_app/app/screens/home_page.dart';
import 'package:loja_app/app/screens/loguinPage.dart';
import 'package:loja_app/app/screens/produtoList.dart';
import 'package:loja_app/app/screens/transport.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: tema,
      initialRoute: '/loguin',
      routes: {
        '/loguin':(context) => LoguinPage(),
        '/home': (context) => Home_screen(),
        '/p': (context) => Produtos(),
        '/tl': (context) => TransportList(),
        '/t': (context) => Transport(),
        '/hp': (context) => HomePage(),
      },
    );
  }
}

class Home_screen extends StatefulWidget {
  Home_screen({
    super.key,
  });

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  int selectedIndex = 0;

  List<Widget> menuList = <Widget>[ProdutoList(), HomePage(),TransportList()];

  void onTapIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: onTapIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: 'Eventos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bus_alert_outlined),
              label: 'Transporte',
            ),
          ],
        ),
        body: menuList.elementAt(selectedIndex));
  }
}
