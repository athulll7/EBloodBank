import 'dart:ui';

import 'package:ebloodbank/requests_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Raise_request_screen extends StatefulWidget {
  const Raise_request_screen({Key? key}) : super(key: key);

  @override
  State<Raise_request_screen> createState() => _Raise_request_screenState();
}

class _Raise_request_screenState extends State<Raise_request_screen> {
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
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: Text(
                          'Raise Request',
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
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Patient Name',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.local_hospital),
                              hintText: '           Hospital Address',
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 35),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              hintText: 'Required Blood',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              filled: true,
                              fillColor: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IntlPhoneField(
                            initialCountryCode: 'IN',
                            controller: TextEditingController(),
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.allow(
                                  RegExp(r'[0-9]')),
                            ],
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              hintText: ' Phone Number',
                              fillColor: Colors.white,
                              filled: true,
                            ),
                          )),

                      /* ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Request',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(800, 60),
                        primary: Color.fromRGBO(124, 196, 255, 1),
                        onPrimary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      )),  */
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
                      SizedBox(height: 50),
                      Container(
                        width: MediaQuery.of(context).size.width - 30,
                        child: Row(
                          children: [
                            Expanded(
                                child: Container(
                              height: 1,
                              color: Colors.grey,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
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
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 12),
                            )),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                                          borderRadius:
                                              BorderRadius.circular(15)),
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
                        ],
                      ),
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
                                    builder: (context) => Requests_screen()));
                              },
                              child: Text('Request'),
                              style: ElevatedButton.styleFrom(
                                  fixedSize: Size(120, 40),
                                  primary: Colors.blueAccent,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ))),
                        ],
                      ),
                      SizedBox(height: 80)
                    ]),
                  ))),
        ));
  }
}
