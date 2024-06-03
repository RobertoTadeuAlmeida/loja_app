import 'package:flutter/material.dart';
import 'package:loja_app/app/models/authentcation_input_decoration.dart';

class LoguinPage extends StatefulWidget {
  const LoguinPage({super.key});

  @override
  State<LoguinPage> createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {

  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Form(
          key: _formKey,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  validator: (String? value) {
                    if (value == null) {
                      return 'Preencha o E-mail por favor.';
                    }
                    if (value.length < 5) {
                      return "E-mail muito curto.";
                    }
                    if (!value.contains("@")) {
                      return "E-mail invalido";
                    }
                    return null;
                  },
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: getAuthenticationInputDecoration('E-mail'),
                ),
                Divider(),
                TextFormField(
                  controller: _passwordController,
                  obscureText: true,
                  style: new TextStyle(color: Colors.black, fontSize: 20),
                  decoration: getAuthenticationInputDecoration('Senha'),
                ),
                Divider(),
                ElevatedButton(onPressed: () {
                  loguinPageButtonClick();
                }, child: Text("Entrar"))
              ],
            ),
          ),
        ),
      ),
    );
  }

  loguinPageButtonClick() {
    if (_formKey.currentState!.validate()) {
      print("Form valido");
    }else {
      print("Form invalido");
    }
  }
}
