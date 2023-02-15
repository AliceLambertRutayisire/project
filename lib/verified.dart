import 'dart:html';

import 'package:flutter/material.dart';
import 'package:project/paymt.dart';

class VerifiedOrder extends StatefulWidget {
  @override
  _VerifiedOrderState createState() => _VerifiedOrderState();
}

class _VerifiedOrderState extends State<VerifiedOrder> {
  @override
  int _selectedIndex = 0;

  _onSelected(int index) {
    setState(() => _selectedIndex = index);
  }

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
                  'assets/images/chef.png',
                  height: 350,
                  width: 350,
                ),
              ),
              Text(
                'Your order is well received, we will get back to you soon',
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
                        MaterialPageRoute(builder: (context) => CheckOrder()));
                  },
                  child: Text(
                    ' Back to Dashboard',
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
