import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class OptionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Opciones')),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Pantalla de Opciones'),
      ),
    );
  }
}
