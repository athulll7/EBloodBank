class userdonor{
  String? nameofdonor;
  String? address;
  String? email;
  String? uid;
  // String? date;
  String? phonenumber;

  var nameofdonorEdititngController;



  userdonor({ this.nameofdonor,this.address,this.email,this.uid,this.phonenumber,/*this.date*/});

   factory userdonor.fromMap(map) {
    return userdonor(
      uid: map['uid'],
      email: map['email'],
      nameofdonor: map['nameofdonor'],
      address: map['address'],
      phonenumber: map['phonenumber'],
     // date: map['date']
    );
  }
     Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'nameofdonor': nameofdonor,
      'address': address,
      'phonenumber':phonenumber,
     // 'date': date,
    };
  }


}