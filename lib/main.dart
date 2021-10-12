import 'package:flutter/material.dart';
import 'package:loginscreen/login_screen.dart';

import 'SignUp.dart';
import 'Time_Line.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
