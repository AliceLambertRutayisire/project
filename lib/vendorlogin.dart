
import 'package:flutter/material.dart';
import 'package:project/vendordashboard.dart';



class VendorLogin extends StatefulWidget {
  const VendorLogin({super.key});

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
              Container(
                child: SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(217, 217, 217, 1),
                        icon: const Icon(
                          Icons.shop,
                          color: Color.fromRGBO(187, 144, 45, 1),
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
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 300,
                child: TextFormField(
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      icon: const Icon(
                        Icons.password_outlined,
                        color: Color.fromRGBO(187, 144, 45, 1),
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VendorDash()));
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Color.fromRGBO(240, 236, 207, 1)),
                    )),
              )
            ]),
      ),
    );
  }
}