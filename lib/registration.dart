import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:project/dashboard.dart';
import 'package:project/registrationverf.dart';

import 'orderinfo.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _momoNumberController = TextEditingController();
  final TextEditingController _allergiesController = TextEditingController();
  final TextEditingController _dietaryRestrictionsController = TextEditingController();

  File? _profileImageFile;

  @override
  void dispose() {
    _nameController.dispose();
    _idController.dispose();
    _phoneNumberController.dispose();
    _momoNumberController.dispose();
    _allergiesController.dispose();
    _dietaryRestrictionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Registration',
                  style: TextStyle(
              fontFamily: 'Barlow Semi Condensed',
              color: Color.fromRGBO(50, 41, 57, 1),
              fontWeight: FontWeight.w900,
              fontSize: 32),
            ),
            backgroundColor: Color.fromRGBO(201, 199, 126, 1),
        ),
      backgroundColor: Color.fromRGBO(201, 199, 126, 1),  
      body:
      Align(alignment: Alignment.center,
      child:  SizedBox(
        width: 900,
        height: 500,
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child:Center(
                        child: Stack(
                          children: [
                            
                            CircleAvatar(
                              radius: 60,
                              backgroundImage: _profileImageFile != null
                                  ? FileImage(_profileImageFile!)
                                  : AssetImage('assets/images/profile.jpg') as ImageProvider<Object>,
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor:
                                  Color.fromRGBO(50, 41, 57, 1)
                                ),
                                 
                                onPressed: () {
                                  _showImagePicker(context);
                                },
                                child: Icon(Icons.camera_alt),
                                
                              ),
                            ),
                          ],
                        ),

                    ))
                  ],
                ),
                Divider(
                        height: 20,
                        //thickness: 3,
                      ),
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 150.0, height: 50.0,
                        child: Container(
                          
                          decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Color(0xFFBB902D),
                          ),
                          child: Center(
                            child: Text('Name', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                          ),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Enter name',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),
               SizedBox(height: 16.0), 
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0, height: 50.0,
                      child: Container(
                        
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFBB902D),
                        ),
                        child: Center(
                          child: Text('ID Number', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _idController,
                        decoration: InputDecoration(
                          hintText: 'Enter ID number',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your ID number';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.0), 

               Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0, height: 50.0,
                      child: Container(
                        
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFBB902D),
                        ),
                        child: Center(
                          child: Text('Phone Number', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Enter phone number',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.0), 

             Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0, height: 50.0,
                      child: Container(
                        
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFBB902D),
                        ),
                        child: Center(
                          child: Text('MOMO Number', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Enter MOMO number',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your MOMO number';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.0), 

             Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0, height: 50.0,
                      child: Container(
                        
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFBB902D),
                        ),
                        child: Center(
                          child: Text('Allergies', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Enter Allergies',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter any allergies';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 16.0), 

             Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 150.0, height: 50.0,
                      child: Container(
                        
                        decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Color(0xFFBB902D),
                        ),
                        child: Center(
                          child: Text('Dietary Restrictions', style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(217, 217, 217, 1))),
                        ),
                      ),
                    ),
                 SizedBox(width: 16.0),                 
                 Expanded(
                  child: SizedBox(
                    width: 80.0,
                    child: Container(
                      
                      child: TextFormField(
                        controller: _phoneNumberController,
                        decoration: InputDecoration(
                          hintText: 'Enter Dietary Restrictions',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        )),
                        validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                        )
                    ),
                  ),
                ),
              ],
            ),
                SizedBox(height: 80, width: 243),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                onPressed: () {
                   Navigator.push(context,
                          MaterialPageRoute(builder: (context) => VerifiedRegistrationWidget()));
                    
                },
                child: Text('Register',
                style: TextStyle(
                          fontFamily: 'Barlow Semi Condensed',
                          color: Color.fromRGBO(240, 236, 207, 1)),),
            )
             ]
             
             )
          ))
        
        
        
        
        ),)
      
       );
    }  
  }
  
  class _showImagePicker {
  _showImagePicker(BuildContext context);
  }
  


