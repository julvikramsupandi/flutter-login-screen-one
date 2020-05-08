import 'package:flutter/material.dart';
import 'package:login/login.dart';
import 'package:login/register.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primaryColor: Color(0xFF5D74E2),
        accentColor: Color(0xFF13E3D2),
      ),
      debugShowCheckedModeBanner: false,
      routes: {'/': (context) => Login(), '/register': (register) => Register()},
    );
  }
}
