import 'package:e_learning_app/pages/dashboard_page/dashboard_page.dart';
import 'package:e_learning_app/pages/forgot_password_page/forgot_password_page.dart';
import 'package:e_learning_app/pages/home_page/home_page.dart';
import 'package:e_learning_app/pages/login_page/login_page.dart';
import 'package:e_learning_app/pages/register_page/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E.Learning',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple, primaryColor: Color(0xFF6548A3)),
      home: HomePage(),
      routes: {
        "/login": (_) => LoginPage(),
        "/register": (_) => RegisterPage(),
        "/dashboard": (_) => DashboardPage(),
        '/forgot-password': (_) => ForgotPasswordPage()
      },
    );
  }
}
