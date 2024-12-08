import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Texto centrado
              Text(
                'Bienvenido!',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Opcional para centrar el texto
              ),
              SizedBox(height: 20),
              // Imagen centrada
              Image.asset(
                'assets/images/welcome.png',
                height: 200,
              ),
              SizedBox(height: 40),
              // Botón "Iniciar Sesión"
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Iniciar Sesion'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
              ),
              SizedBox(height: 20),
              // Botón "¿Qué es este proyecto?"
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/description');
                },
                child: Text('Que es este proyecto?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
