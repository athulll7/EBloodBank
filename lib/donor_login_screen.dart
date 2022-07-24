import 'package:ebloodbank/bloodbank_profile_screen.dart';
import 'package:ebloodbank/donor_sign_up_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'donor_profile_screen.dart';

class Donor_login_screen extends StatefulWidget {
  Donor_login_screen({Key? key}) : super(key: key);

  @override
  State<Donor_login_screen> createState() => Donor_login_screenState();
}

class Donor_login_screenState extends State<Donor_login_screen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ('please enter your email');
        }
        if (!RegExp(
          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]",
        ).hasMatch(value)) {
          return ("Please Enter a valid email");
        }

        return null;
      },
      onSaved: (Value) {
        emailController.text = Value!;
      },
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.email,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          filled: true,
          hintText: 'Email id',
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Colors.white),
    );
    return Scaffold(
      backgroundColor: Colors.red,
      resizeToAvoidBottomInset: false,
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
                  'Donor Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(padding: const EdgeInsets.all(8.0), child: emailField),
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Donor_profile_screen()));
                    },
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
                height: 50,
              ),
              Text(
                "Don't have an account?",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Donor_signup_screen()));
                },
                child: const Text('Sign Up',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        decoration: TextDecoration.underline)),
              ),
            ])),
      )),
    );
  }

  void signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      await _auth
          .signInWithEmailAndPassword(
              email: email.trim(), password: password.trim())
          .then((uid) => {
                Fluttertoast.showToast(
                    msg: "login successfull", timeInSecForIosWeb: 3),
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (ctx) => Donor_profile_screen()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
