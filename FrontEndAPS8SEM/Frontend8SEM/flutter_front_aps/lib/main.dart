import 'package:flutter/material.dart';
import 'package:flutter_front_aps/login.dart';

void main() {
  runApp(const MyApp());   
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
    
  @override
  
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onde Descartar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const LoginScreen(),
    );

  }
}

