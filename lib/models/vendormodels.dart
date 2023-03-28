
class VendorModel {
  String? uid;
  String? email;
  

  VendorModel({this.uid, this. email});

  // receiving data from the server
  factory VendorModel.fromMap(map) {
    return VendorModel(
      uid: map['uid'],
      email: map['email'],
      
    );
  }
 
  // sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
    
    };
  }

  
}