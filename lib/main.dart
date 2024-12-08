import 'package:flutter/material.dart';
import 'package:pant/login_screen.dart';
import 'package:pant/options_screen.dart';
import 'package:pant/project_description_screen.dart';
import 'package:pant/register_screen.dart';
import 'package:pant/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navegacion',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/description': (context) => ProjectDescriptionScreen(),
        '/options': (context) => OptionsScreen(),
      },
    );
  }
}
