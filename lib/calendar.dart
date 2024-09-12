import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  Calendar();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Calendar",
          style: TextStyle(fontSize: 24), // Ajuste o estilo conforme necessário
        ),
      ),
    );
  }
}
