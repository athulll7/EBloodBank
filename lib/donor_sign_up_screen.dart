import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ebloodbank/donor_login_screen.dart';
import 'package:ebloodbank/userdonor.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';
import 'package:intl_phone_field/phone_number.dart';

//import 'package:intl/intl.dart';

class Donor_signup_screen extends StatefulWidget {
  const Donor_signup_screen({Key? key}) : super(key: key);

  @override
  State<Donor_signup_screen> createState() => _Donor_signup_screenState();
}

class _Donor_signup_screenState extends State<Donor_signup_screen> {
    final _formKey=GlobalKey<FormState>();
    final FirebaseAuth _auth =FirebaseAuth.instance;
  final nameofdonorEdititngController=new TextEditingController();
   final addressEditingController=new TextEditingController();
    final emailEdititngController=new TextEditingController();
     final passwordEdititngController=new TextEditingController();
     final phonenumberEditingController=new TextEditingController();
      final dateEditingController=new TextEditingController();
   bool _isObscure=true;
  TextEditingController _date = TextEditingController();
  String dropdownvalue = '                  Select District';

  var items = [
    'Alappuzha',
    'Ernakulam',
    'Kannur',
    'Kasaragod',
    'Kollam',
    'Kottayam',
    'Wayanad',
    'Pathanamthitta',
    'Idukki',
    'Malappuram',
    'Kozhiode',
    'Trissur',
    'Palakkad',
    'Tiruvanathapuram'
  ];
  DateTime date = DateTime(2022, 01, 14);


  @override
  Widget build(BuildContext context) {
    final nameofdonor= TextFormField(
      controller: nameofdonorEdititngController,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('Name cannot be empty');
                          }
                                if (!RegExp(r'^.{3,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Name(Min. 3 Character)");
          }
                        },
      onSaved: (value){
        nameofdonorEdititngController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    
                    filled: true,
                    hintText: 'Name Of Blood Bank', 
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),textAlign: TextAlign.center,
    ); 
                    
      final addressField = TextFormField(
      controller: addressEditingController,
      keyboardType: TextInputType.multiline,
      maxLines: null,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('Address cannot be empty');
                          }
                                if (!RegExp(r'^.{3,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Address");
          }
                        },
      onSaved: (value){
        addressEditingController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  //  contentPadding: EdgeInsets.symmetric(vertical: 40),
                    filled: true,
                    hintText: 'Address',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),textAlign: TextAlign.center,
                    
    );    
     final emailField= TextFormField(
      controller: emailEdititngController,
       validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return('please enter your email');
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                              return ("Please Enter a valid email");
                            }

                          return null ;
                        },
      onSaved: (value){
       emailEdititngController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(prefixIcon: Icon (Icons.email, ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    filled: true,
                    hintText: 'Email id',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),
                    textAlign: TextAlign.center
                    
    ); 

 final  passwordField= TextFormField(
      controller:  passwordEdititngController,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('please enter your password');
                          }
                                if (!RegExp(r'^.{6,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
                        },
      onSaved: (value){
         passwordEdititngController.text=value!;
      },
      obscureText: _isObscure,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                  
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        
                        }
                        );
                      }
      
                      ),
                      
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                    ), 
                    
                      filled: true,
                      fillColor: Colors.white
                      ),
                      textAlign: TextAlign.center 
                      ,
    );
    final PhonenumberField= 
IntlPhoneField(
  controller: phonenumberEditingController,
  onSaved: (value){
       phonenumberEditingController.text=value! as String;
      },
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_android),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Phone Number',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      initialCountryCode: 'IN',
                    );
            

 final dateField=
 TextFormField(

  
                          controller: _date,
                          onSaved: (value){
      dateEditingController.text=value! as String;
      },
                          readOnly: true,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_today_rounded),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              filled: true,
                              hintText: 'Last Donated',
                              hintStyle: TextStyle(color: Colors.grey),
                              fillColor: Colors.white),
                          textAlign: TextAlign.center,
                          onTap: () async {
                            DateTime? newDate = await showDatePicker(
                                context: context,
                                initialDate: date,
                                firstDate: DateTime(2010),
                                lastDate: DateTime(2100));
                            if (newDate != null)
                              setState(() {
                                _date.text =
                                    DateFormat('dd-MM-yyyy').format(newDate);
                              });
                          }
                          );

//------------------------------------------------
   
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, toolbarHeight: 45),

      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  'Donor Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: nameofdonor,
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: addressField,
                ),
             /*   Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          hintText: 'Address',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                */
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color.fromARGB(255, 255, 255, 255), //<-- SEE HERE
                    ),
                    width: MediaQuery.of(context).size.width * .92,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)))),
                        hint: Text(
                          dropdownvalue,
                          textAlign: TextAlign.center,
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(
                              items,
                              textAlign: TextAlign.center,
                            ),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: dateField                          ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: PhonenumberField,
                ),
                   // SizedBox(height: 10,),
              /*  Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Create Password',
                          suffixIcon: IconButton(
                              icon: Icon(_isObscure
                                  ? Icons.visibility_off
                                  : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              }),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          fillColor: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        hintText: 'Confirm Password',
                        suffixIcon: IconButton(
                            icon: Icon(_isObscure
                                ? Icons.visibility_off
                                : Icons.visibility),
                            onPressed: () {
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            }),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
                */
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: emailField,
                ),
                //SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: passwordField,
                ),
                ElevatedButton(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      signUp(
                                emailEdititngController.text,
                                 passwordEdititngController.text);
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(100, 100),
                        primary: Colors.white,
                        onPrimary: Colors.black,
                        shape: CircleBorder()))
              ],
            ),
          ),
        ),
      )),
    );
  }
  
  void signUp(String email,String password) async
  {
    if(_formKey.currentState!.validate())
    {
     await _auth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim())
     .then((value)=>
     {
      postDetailsToFirestore()
     }).catchError((e)
     {
      Fluttertoast.showToast(msg: e.message);
     });
     }
     
  }


 postDetailsToFirestore()async
  {
FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
User? user= _auth.currentUser;
   userdonor Userdonor=userdonor();


    Userdonor.email = user!.email;
    Userdonor.uid = user.uid;
    Userdonor.nameofdonor=nameofdonorEdititngController.text;
    Userdonor.address = addressEditingController.text;
    Userdonor.phonenumber= phonenumberEditingController.text;
   //  Userdonor.date= dateEditingController.text;


    Userdonor.email=emailEdititngController.text;
    await firebaseFirestore
    .collection("DONOR")
    .doc(user.uid)
    .set(Userdonor.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");
    Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => Donor_login_screen()),
        (route) => false);

     
  }
  }
