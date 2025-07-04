import 'dart:async';
import 'package:dmrc/HomeScreen.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  double _opacity = 0;
  double _scale = 0.4;
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1;
        _scale = 1.0;
      });
    });

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(136, 99, 95, 95),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png', height: 250, width: 250),
              SizedBox(height: 20),
              AnimatedOpacity(
                duration: Duration(seconds: 2),
                opacity: _opacity,
                child: AnimatedScale(
                  scale: _scale,
                  duration: Duration(seconds: 2),
                  child: Text(
                    'Welcome To Haryana Metro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
