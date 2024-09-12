import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  Products();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "Products",
          style: TextStyle(fontSize: 24), // Ajuste o estilo conforme necessário
        ),
      ),
    );
  }
}
