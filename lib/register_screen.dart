import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro')),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Pantalla de Registro'),
      ),
    );
  }
}
