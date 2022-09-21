import 'package:flutter/material.dart';
import 'package:spots/connection/connection_db.dart';
import 'package:spots/pages/home.dart';
import 'package:spots/pages/login.dart';

void main() {
  runApp(const MyApp());



}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        '/home': (context) => Home()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
    );
  }
}