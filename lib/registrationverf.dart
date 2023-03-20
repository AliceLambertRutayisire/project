
import 'package:flutter/material.dart';
import 'package:project/dashboard.dart';

class VerifiedRegistrationWidget extends StatefulWidget {
  const VerifiedRegistrationWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VerifiedRegistrationState createState() => _VerifiedRegistrationState();
}

class _VerifiedRegistrationState extends State<VerifiedRegistrationWidget> {
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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Title(
                  color: Color.fromRGBO(50, 41, 57, 1),
                  child: Text(
                    'Thank You !',
                    style: TextStyle(
                        color: Color.fromRGBO(50, 41, 57, 1),
                        fontSize: 64,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Barlow Semi Condensed'),
                  )),
              Container(
                child: Image.asset(
                  'assets/images/thank_you.png',
                  height: 350,
                  width: 350,
                ),
              ),
              Text(
                'Thank you for Registering, Login to your account and lets get to ORDERING',
                style: TextStyle(
                    fontFamily: 'Barlow Semi Condensed',
                    fontWeight: FontWeight.normal,
                    fontSize: 20),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 30),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(187, 144, 45, 1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard()));
                  },
                  child: Text(
                    ' Go to Dashboard',
                    style: TextStyle(
                        fontFamily: 'Barlow Semi Condensed',
                        color: Color.fromRGBO(240, 236, 207, 1)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
