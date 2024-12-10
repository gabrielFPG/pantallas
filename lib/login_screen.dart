import 'package:flutter/material.dart';
import 'drawer_widget.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String? _username, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Iniciar Sesion')),
      drawer: buildDrawer(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Usuario'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su usuario';
                  }
                  return null;
                },
                onSaved: (value) => _username = value,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(labelText: 'Contraseña'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese su contraseña';
                  }
                  return null;
                },
                onSaved: (value) => _password = value,
              ),
              SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pushNamed(context, '/options');
                  }
                },
                child: Text('Ingresar'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('No tienes cuenta? Registrate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
