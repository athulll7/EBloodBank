import 'dart:html';

import 'package:ebloodbank/blood_bank_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Bloodbank_login_screen extends StatefulWidget {
  const Bloodbank_login_screen({Key? key}) : super(key: key);

  @override
  State<Bloodbank_login_screen> createState() => Bloodbank_login_screenState();
}

class Bloodbank_login_screenState extends State<Bloodbank_login_screen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          toolbarHeight: 45,
          backgroundColor: Colors.red,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
              width: double.infinity,
              height: double.infinity,
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'Blood Bank Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15)),
                          filled: true,
                          hintText: 'Email id',
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: TextFormField(
                      obscureText: _isObscure,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
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
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(80, 80),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: CircleBorder())),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  "Don't have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
               
                  
                   TextButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: ((context) => Bloodbank_signup_screen()
                    )
                    )
                    );
                  }, child: Text('Sign Up',style: TextStyle(fontSize: 25,
                  color: Colors.white,decoration: TextDecoration.underline),))
                     /* style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          decoration: TextDecoration.underline)),*/
              ]
                ),
              )
              
              ),
        ),
        


        resizeToAvoidBottomInset: false
        );
  }
}
