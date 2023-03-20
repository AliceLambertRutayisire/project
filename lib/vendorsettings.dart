import 'package:flutter/material.dart';
import 'package:project/main.dart';
import 'package:project/vendordashboard.dart';
import 'package:project/wallet.dart';

class VendorMenu extends StatefulWidget {
  @override
  _VendorMenuState createState() => _VendorMenuState();

}

class _VendorMenuState extends State<VendorMenu> {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(201, 199, 126, 1),
        ),
     
      backgroundColor: Color.fromRGBO(201, 199, 126, 1),
      body: Center(child: Column
                    (children: [
                      SizedBox(height: 62, width: 305),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBB902D)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => WalletPage()));
                    },
                    child: const Text(
                      'Profile',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Colors.black),
                    )),
              ),

              SizedBox(height: 62, width: 304),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBB902D)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VendorDash()));
                    },
                    child: const Text(
                      'Wallet',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Colors.black),
                    )),
              ),
              SizedBox(height: 62, width: 304),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFBB902D)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VendorLogin()));
                    },
                    child: const Text(
                      'Logout',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Colors.black),
                    )),
              )
                    ],

            
      ),)
      
    );
  
  }
  }