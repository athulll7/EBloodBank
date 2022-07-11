import 'package:flutter/material.dart';



import 'bloodbank_login_screen.dart';


class Bloodbank_profile_screen extends StatefulWidget {
   Bloodbank_profile_screen ({ Key? key }) : super(key: key);

  @override
  TextEditingController _date = TextEditingController();
  State<Bloodbank_profile_screen> createState() => _Bloodbank_profile_screenState();
}

class _Bloodbank_profile_screenState extends State<Bloodbank_profile_screen> {
  DateTime date=DateTime(2022,12,22);
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
     
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.red,
        actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.logout,
        color: Colors.white,
      ),
      onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Bloodbank_login_screen()));
      },
    )
  ],
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
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Blood Bank Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),const Image(
                image: AssetImage('assets/bloodbankprofile.png'),
                height: 150,
               ),
               
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Kasaragod General Hospital Blood Bank',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                          'A+ :         ',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          'B+ :  ',
                          style: TextStyle(fontSize: 35),
                        ),
                       
              ],
            ),
               ),

               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                          'AB+ :            ',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          'O+ :      ',
                          style: TextStyle(fontSize: 35),
                        ),
                       
              ],
            ),
               ),

               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                          'A- :         ',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          'B- :  ',
                          style: TextStyle(fontSize: 35),
                        ),
                       
              ],
            ),
               ),

               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                          'AB- :            ',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          'O- :      ',
                          style: TextStyle(fontSize: 35),
                        ),
                       
              ],
            ),
               ),
                     
               
               
                 Padding(
                   padding:  EdgeInsets.fromLTRB(30.0, 130.0, 30, 10.0),
                   child: SizedBox(height: 50,width: 250,
                     child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red),
                                   child: Text('Save', style: TextStyle(fontSize: 20),),
                                   onPressed: () {
                      } 
                                   ),
                   ),
                 ),
                
                
              ]),
            )),
      ))
    );
  }
}