import 'package:flutter/material.dart';
import 'package:loja_app/app/models/authentcation_input_decoration.dart';

class LoguinPage extends StatefulWidget {
  const LoguinPage({super.key});

  @override
  State<LoguinPage> createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: getAuthenticationInputDecoration('E-mail'),
              ),
              Divider(),
              TextFormField(
                obscureText: true,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: getAuthenticationInputDecoration('Senha'),
              ),
              Divider(),
              ElevatedButton(onPressed: () {}, child: Text("Entrar"))
            ],
          ),
        ),
      ),
    );
  }
}
