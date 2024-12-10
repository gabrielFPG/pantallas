import 'package:flutter/material.dart';

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 60,
              ),
              SizedBox(height: 10),
              Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Inicio'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),
        ListTile(
          leading: Icon(Icons.login),
          title: Text('Iniciar Sesión'),
          onTap: () {
            Navigator.pushNamed(context, '/login');
          },
        ),
        ListTile(
          leading: Icon(Icons.app_registration),
          title: Text('Registro'),
          onTap: () {
            Navigator.pushNamed(context, '/register');
          },
        ),
        ListTile(
          leading: Icon(Icons.info),
          title: Text('Descripción del Proyecto'),
          onTap: () {
            Navigator.pushNamed(context, '/description');
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Opciones'),
          onTap: () {
            Navigator.pushNamed(context, '/options');
          },
        ),
      ],
    ),
  );
}
