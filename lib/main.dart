import 'package:flutter/material.dart';
import 'package:login/register_screen.dart';

import 'package:login/login_screen.dart';
import 'forget_password.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFFFFF), 
        ),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
      initialRoute: Login.id,
      routes: {
        Login.id:(context)=>Login(),
        Register.id:(context)=>Register(),
        Forget.id:(context)=>Forget(),
        
      },
    );
  }
}
