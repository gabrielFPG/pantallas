import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Descripción')),
      drawer: buildDrawer(context),
      body: Center(
        child: Text('Descripción del Proyecto'),
      ),
    );
  }
}
