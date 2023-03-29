
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/vendordashboard.dart';



class VendorLogin extends StatefulWidget {
  const VendorLogin({super.key});

  @override
  State<VendorLogin> createState() => _VendorLoginState();
}

class _VendorLoginState extends State<VendorLogin> {
  final formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  
  String? errorMessage;

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
              Expanded(
                child: Image.asset("assets/images/vendor_login.png",
                    width: 346, height: 376)),
              
              Container(
                child: SizedBox(
                  width: 300,
                 
                  child: 
                  Form(
                     key: formKey,
                    child: TextFormField(
                    controller: _nameController,
                    onSaved: (value) {
                                  _nameController.text = value!;
                                },
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(217, 217, 217, 1),
                          prefixIcon: const Icon(
                            Icons.shop,
                            color: Color.fromRGBO(187, 144, 45, 1),
                          ),
                          hintText: 'Enter vendor name',
                          labelText: 'Username',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          )),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 300,
                
                child: 
                Form(
                  
                  child: TextFormField(
                     controller: _passwordController,
                    onSaved: (value) {
                                  _passwordController.text = value!;
                                },
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromRGBO(217, 217, 217, 1),
                        prefixIcon: const Icon(
                          Icons.key,
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
              ),
              SizedBox(height: 54, width: 243),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                    onPressed: () {
                      signIn(_nameController.text, _passwordController.text);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Color.fromRGBO(240, 236, 207, 1)),
                    )),
              ),
              SizedBox(height: 15,)
            ]),
      ),
    );
  }

  void signIn(String email, String password) async {
    if (formKey.currentState!.validate()) {
      try {
        await _auth
            .signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
                  Fluttertoast.showToast(msg: "Login Successful"),
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => VendorDash())),
                });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";
 
            break;
          case "wrong-password":
            errorMessage = "You entered the wrong password.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}
