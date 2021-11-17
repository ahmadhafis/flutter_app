import 'package:flutter/material.dart';
import 'package:flutter_app/screens/categories.dart';
import 'package:flutter_app/screens/login.dart';
import 'package:flutter_app/screens/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Login(),
      routes: {
        '/login': (context) => Login(),
        '/register': (context) => Register(),
        '/categories': (context) => Categories()
      },
    );
  }
}

