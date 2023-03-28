import 'package:flutter/material.dart';
import 'package:project/splash.dart';
import 'package:project/registration.dart';
import 'package:project/studentlogin.dart';
import 'package:project/stusignup.dart';
import 'package:project/vendordashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:project/vendorlogin.dart';
import 'package:project/vendorsignup.dart';
import 'firebase_options.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(201, 199, 126, 1),
      ),
      home: Logo(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(201, 199, 126, 1),
        ),
        backgroundColor: Color.fromRGBO(201, 199, 126, 1),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset("assets/images/foodease.png",
                    width: 346, height: 376),
                // const Spacer(flex: 1),
                const SizedBox(height: 54, width: 243),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBB902D)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StudentSignup()));
                    },
                    child: const Text(
                      'Student Sign Up',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Color.fromRGBO(240, 236, 207, 1)),
                    )),
                const SizedBox(height: 54, width: 243),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VendorSignup()));
                    },
                    child: const Text("Vendor Sign Up",
                        style: TextStyle(
                            fontFamily: 'Barlow Semi Condensed',
                            color: Color.fromRGBO(240, 236, 207, 1))))
              ]),
        ));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}



