import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl/intl.dart';

//import 'package:intl/intl.dart';

class Donor_signup_screen extends StatefulWidget {
  const Donor_signup_screen({Key? key}) : super(key: key);

  @override
  State<Donor_signup_screen> createState() => _Donor_signup_screenState();
}

class _Donor_signup_screenState extends State<Donor_signup_screen> {
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

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    //git init git add . git commit -m "fifth commit"   git config --global user.name "Rahulckoovara"   git remote add origin https://github.com/athulll7/EBloodBank.git
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, toolbarHeight: 45),

      resizeToAvoidBottomInset: true, //git push origin
      backgroundColor: Colors.red,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
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
                    child: TextFormField(
                        controller: _date,
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
                        })),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: IntlPhoneField(
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
              Padding(
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
              ElevatedButton(
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: CircleBorder()))
            ],
          ),
        ),
      )),
    );
  }
}
