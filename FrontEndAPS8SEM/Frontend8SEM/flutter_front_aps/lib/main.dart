import 'package:flutter_front_aps/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());   
}

class MyApp extends StatelessWidget {
    
  @override
  
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onde Descartar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:const Login(),
    );

  }
}

