import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:gammingproject/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gamming',
        debugShowCheckedModeBanner: false,
        theme:  ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,


      ),
        home :MainScreen()
    );
  }
}
