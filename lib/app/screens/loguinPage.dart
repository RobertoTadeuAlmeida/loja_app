import 'package:flutter/material.dart';

class LoguinPage extends StatefulWidget {
  const LoguinPage({super.key});

  @override
  State<LoguinPage> createState() => _LoguinPageState();
}

class _LoguinPageState extends State<LoguinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextFormField(),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
