import 'package:flutter/material.dart';
import 'package:flutterappblkoffer/RegistrationScreen.dart';

import 'LoginScreen.dart';
import 'home_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}