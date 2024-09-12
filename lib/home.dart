import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Home",
          style: TextStyle(fontSize: 24), // Ajuste o estilo conforme necessário
        ),
      ),
    );
  }
}
