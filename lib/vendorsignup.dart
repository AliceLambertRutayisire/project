import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project/vendorlogin.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'models/studentmodel.dart';
import 'models/vendormodels.dart';


class VendorSignup extends StatefulWidget {
  const VendorSignup({super.key});

  @override
  State<VendorSignup> createState() => _VendorSignupState();
}

class _VendorSignupState extends State<VendorSignup> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
              Expanded(child: Image.asset("assets/images/vendor_login.png", width: 346, height: 376)),
              // const Spacer(flex: 1),
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: _nameController,
                  onSaved: (value) {
                                _nameController.text = value!;
                              },
                  decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color.fromRGBO(217, 217, 217, 1),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color.fromRGBO(50, 41, 57, 1),
                      ),
                      hintText: 'Enter Username',
                      labelText: 'Username',
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              SizedBox(
                width: 300,
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
              SizedBox(
                height: 20,
              ),
            SizedBox(
                width: 100,
                child: Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: MaterialButton(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      color: Color.fromRGBO(50, 41, 57, 1),
                      minWidth: MediaQuery.of(context).size.width,
                      onPressed: () {
                          signUp(_nameController.text, _passwordController.text);
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                            fontFamily: 'Barlow Semi Condensed',
                            color: Color.fromRGBO(240, 236, 207, 1)
                            ),
                      ))),
              ),
             SizedBox(height: 15,),
            
            TextButton(onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VendorLogin()));
            },  
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an Account? Sign In',
                  style: TextStyle(fontSize: 10,
                   color:  Color(0xFFBB902D))
                )
                
              ]
              
             ))
              ),
             SizedBox(height: 15)
            ]),
      ),
    );

  }
  void signUp(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await _auth
            .createUserWithEmailAndPassword(email: email, password: password)
            .then((value) => {postDetailsToFirestore()})
            .catchError((e) {
          Fluttertoast.showToast(msg: e!.message);
          Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => VendorLogin()));

        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address is invalid.";
            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
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
 
  postDetailsToFirestore() async {
    // calling our firestore
    // calling our user model
    // sedning these values
 
    FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
    User? user = _auth.currentUser;
 
    VendorModel vendorModel = VendorModel();
 
    // writing all the values
    vendorModel.email = user!.email;
    vendorModel.uid = user.uid;
    
 
    await firebaseFirestore
        .collection("vendor")
        .doc(user.uid)
        .set(vendorModel.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");
 
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => VendorLogin()),
        (route) => false);
  }
}