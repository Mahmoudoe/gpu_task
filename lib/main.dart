import 'package:flutter/material.dart';
import 'Profile.dart';
import 'Withdraw.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Cairo'),
      home: //Withdraw(),
            Profile(),
    );
  }
}

