import 'package:flutter/material.dart';
import 'package:project_1/screens/login_screen.dart';
import 'package:project_1/screens/register_screen.dart';
import 'package:project_1/screens/welcome_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:const WelcomeScreen(),
    );
  }
}

