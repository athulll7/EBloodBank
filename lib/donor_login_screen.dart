import 'package:ebloodbank/donor_sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'donor_profile_screen.dart';

class Donor_login_screen extends StatefulWidget {
  Donor_login_screen({Key? key}) : super(key: key);

  @override
  State<Donor_login_screen> createState() => Donor_login_screenState();
}

class Donor_login_screenState extends State<Donor_login_screen> {
  @override
  Widget build(BuildContext context) {
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
                  height: 20,
                ),
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
                const SizedBox(height: 45),
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
            )),
      )),
    );
  }
}
