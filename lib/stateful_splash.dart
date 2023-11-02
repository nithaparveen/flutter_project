import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_project/Login_Signup.dart';
import 'package:lottie/lottie.dart';

void main (){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, // to remove the debug from the corner
    home: Splash2(),
  ));
}
class Splash2 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _Splash2State();
  }
  class _Splash2State extends State<Splash2> {
  @override
  void initState() {
   Timer(Duration(seconds: 1 ), () {
     Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => Login_SignUp()));
   });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
            'assets/animations/infinity.json',
            width: 240,
            height: 240
        ),
        // Lottie.network('https://lottie.host/?file=42071d87-3dc0-4ae1-a8aa-2f05f7ce8f1a/vZn3XG1a1Z.json'),
      ),
    );
  }
}
