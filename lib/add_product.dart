import 'package:flutter/material.dart';

class AddProduct extends StatelessWidget {
  AddProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          "AddProduct",
          style: TextStyle(fontSize: 24), // Ajuste o estilo conforme necessário
        ),
      ),
    );
  }
}
