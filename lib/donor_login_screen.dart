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

  final FirebaseAuth _auth = FirebaseAuth.instance;
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

    final passwordField = TextFormField(
      controller: passwordController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ('please enter your password');
        }
        if (!RegExp(r'^.{6,}$').hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (Value) {
        passwordController.text = Value!;
      },
      obscureText: _isObscure,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          hintText: 'Password',
          suffixIcon: IconButton(
              icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              }),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          filled: true,
          fillColor: Colors.white),
    );



    //-----------------------------------
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
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child:
                   
                      Text(
                      'Donor Login',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  emailField,
                  SizedBox(height: 20,),
                  passwordField,
              
                  /*
                
              
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IntlPhoneField(
                        controller: TextEditingController(),
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
                      )),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Send OTP',
                          style: TextStyle(fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                            fixedSize: Size(300, 40),
                            primary: Colors.blueGrey,
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ))),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 30,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.grey,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                        )),
                        Text(
                          "Enter 4 Digit OTP",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.grey,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: Colors.white,
                              filled: true),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: Colors.white,
                              filled: true),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: Colors.white,
                              filled: true),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 68,
                        width: 64,
                        child: TextFormField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                            if (value.length == 0) {
                              FocusScope.of(context).previousFocus();
                            }
                          },
                          onSaved: (pin1) {},
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              fillColor: Colors.white,
                              filled: true),
                          style: Theme.of(context).textTheme.headline6,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Resend OTP',
                          ),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(120, 40),
                              primary: Colors.white,
                              onPrimary: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ))),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Donor_profile_screen()));
                          },
                          child: Text('Verify'),
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(120, 40),
                              primary: Colors.blueAccent,
                              onPrimary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ))),
                    ],
                  ),
                  */
                  SizedBox(height: 45),
                   Padding(
                        padding: const EdgeInsets.all(20),
                        child: ElevatedButton(
                            onPressed: () {
                              signIn(
                                 emailController.text, passwordController.text);
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
                ]),
              ),
            )),
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
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (ctx) => Donor_profile_screen()))
              })
          .catchError((e) {
        Fluttertoast.showToast(msg: e!.message);
      });
    }
  }
}
