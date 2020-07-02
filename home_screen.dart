import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterappblkoffer/LoginScreen.dart';

import 'RegistrationScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var items12 = {
    'Laptop',
    'pendrive',
    'camera',
    'adapter',
    'keyboard',
    'mouse',
    'memory slot'
  };
  String currentitem = "Laptop";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("About"),
          backgroundColor: Colors.transparent,
        ),
        body: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/logos/mainpic.PNG'),
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            Container(
               
                child: Center(

                    child: DropdownButton<String>(
              style: TextStyle(color: Colors.white,fontSize: 25.0,backgroundColor: Colors.black26),

              items: items12.map((String dropDownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropDownStringItem,
                  child: Text(dropDownStringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected) {
                setState(() {
                  this.currentitem = newValueSelected;
                });
              },
              value: currentitem,
            ),
                ),
            )
          ],
        ),
      ),
    );
  }
}
