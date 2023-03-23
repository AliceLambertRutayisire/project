import 'dart:io';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:project/dashboard.dart';
import 'package:project/main.dart';
import 'package:project/registrationverf.dart';
import 'package:project/status.dart';
import 'package:project/studentlogin.dart';

import 'history.dart';
import 'orderinfo.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
        title: Text('Profile',
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
                          hintText: 'Timmy Turner',
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
                          hintText: 'ALU2021CS25',
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
                          hintText: '0782833456',
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
                          hintText: '0789654323',
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
                          hintText: 'Milk',
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
                          hintText: 'Lactose intolerant',
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

              Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(50, 41, 57, 1)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => OrderStatus());
                    Navigator.push(context, route);
                  },
                  child: SizedBox(
                    width: 100,
                    child: Text("Order History"),
                  ),
                ),
              ),
              // Spacer(
              //   flex: 1,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(50, 41, 57, 1))
                      ,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Order()));
                  },
                  child: 
                  SizedBox(width: 100, child: Text("Order status")
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(187, 144, 45, 1)),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (context) => StudentLogin());
                    Navigator.push(context, route);
                  },
                  child: SizedBox(
                    width: 100,
                    child: Text("Log Out"),
                  ),
                ),
              ),
            ],
          ),
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
  


