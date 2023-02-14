import 'package:flutter/material.dart';
import 'package:project/splash.dart';
import 'package:project/view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                              builder: (context) => StudentLogin()));
                    },
                    child: const Text(
                      'Student Login',
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
                              builder: (context) => VendorLogin()));
                    },
                    child: const Text("Vendor Login",
                        style: TextStyle(
                            fontFamily: 'Barlow Semi Condensed',
                            color: Color.fromRGBO(240, 236, 207, 1))))
              ]),
        ));
    // This trailing comma makes auto-formatting nicer for build methods.
  }
}

class StudentLogin extends StatefulWidget {
  @override
  State<StudentLogin> createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  final formKey = GlobalKey<FormState>();

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: Ma'inAxisSize.max,
            children: [
              Image.asset("assets/images/login.png", width: 346, height: 376),
              // const Spacer(flex: 1),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      icon: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(50, 41, 57, 1),
                      ),
                      hintText: 'Enter ID',
                      labelText: 'ID',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),

              const Spacer(flex: 1),

              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      icon: const Icon(
                        Icons.password_outlined,
                        color: Color.fromRGBO(50, 41, 57, 1),
                      ),
                      hintText: 'Enter password',
                      labelText: 'Password',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              SizedBox(height: 54, width: 243),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBB902D)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ViewOrder()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Barlow Semi Condensed',
                        color: Color.fromRGBO(240, 236, 207, 1)),
                  ))
            ]),
      ),
    );
  }
}

class VendorLogin extends StatefulWidget {
  @override
  State<VendorLogin> createState() => _VendorLoginState();
}

class _VendorLoginState extends State<VendorLogin> {
  final formKey = GlobalKey<FormState>();

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisSize: Ma'inAxisSize.max,
            children: [
              Image.asset("assets/images/vendor_login.png",
                  width: 346, height: 376),
              // const Spacer(flex: 1),
              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      icon: const Icon(
                        Icons.shop,
                        color: Color.fromRGBO(50, 41, 57, 1),
                      ),
                      hintText: 'Enter vendor name',
                      labelText: 'Name',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),

              const Spacer(flex: 1),

              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      icon: const Icon(
                        Icons.password_outlined,
                        color: Color.fromRGBO(50, 41, 57, 1),
                      ),
                      hintText: 'Enter password',
                      labelText: 'Password',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              SizedBox(height: 54, width: 243),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBB902D)),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => ViewOrder()));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        fontFamily: 'Barlow Semi Condensed',
                        color: Color.fromRGBO(240, 236, 207, 1)),
                  ))
            ]),
      ),
    );
  }
}
