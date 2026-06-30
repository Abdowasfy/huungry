import 'package:flutter/material.dart';
import 'package:huungry/features/auth/view/login_view.dart';
import 'package:huungry/features/auth/view/signup_view.dart';
import 'package:huungry/features/home/views/home_view.dart';
import 'package:huungry/root.dart';
import 'package:huungry/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'huungry app',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),

      home:Root(),
    );
  }
}


