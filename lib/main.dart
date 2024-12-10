import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'description_screen.dart';
import 'options_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto Flutter',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/description': (context) => DescriptionScreen(),
        '/options': (context) => OptionsScreen(),
      },
    );
  }
}
