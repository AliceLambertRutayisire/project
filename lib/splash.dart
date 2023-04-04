import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Logo extends StatefulWidget {
  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 1), (() {
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => MyHomePage()));
  //   }));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(201, 199, 126, 1),
      body: 
           AnimatedSplashScreen(splash: Image.asset("assets/images/foodease.png",  width: 346, height: 376), duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color.fromRGBO(201, 199, 126, 1),
            nextScreen: MyHomePage(),
            centered: true,
        
         ),
       );
  }
}
