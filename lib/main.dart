import 'package:dmrc/splash_screen.dart';
import 'package:flutter/material.dart';
import 'HomeScreen.dart';
import 'To_Do_List.dart';
import 'smart_Card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMRC',
      theme: ThemeData.dark(),
      home: SplashScreen(),
    );
  }
}
