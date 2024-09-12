import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Text(
          "Profile",
          style: TextStyle(fontSize: 24), // Ajuste o estilo conforme necessário
        ),
      ),
    );
  }
}
