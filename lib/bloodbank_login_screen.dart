import 'package:flutter/material.dart';

class Bloodbank_login_screen extends StatefulWidget {
  const Bloodbank_login_screen({ Key? key }) : super(key: key);

  @override
  State<Bloodbank_login_screen> createState() => _Bloodbank_login_screenState();
}

class _Bloodbank_login_screenState extends State<Bloodbank_login_screen> {
   bool _isObscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
      body: SafeArea(child: 
      Column(
         children: [
            SizedBox(height: 60,),
            Text('Blood Bank Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
            ,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container( 
                child: TextFormField( style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                  filled: true,
                  hintText: 'Name Of Blood Bank',
                  
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white
                  ),textAlign: TextAlign.center,
                  
                  ),
              ),
            ),

            
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container( 
                child: TextFormField( style: TextStyle(color: Colors.black),
                  decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  contentPadding: EdgeInsets.symmetric(vertical: 40),
                  filled: true,
                  hintText: 'Address',
                  
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white
                  ),textAlign: TextAlign.center,
                  
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container( 
                child: TextFormField( style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(prefixIcon: Icon (Icons.email, ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  hintText: 'Email id',
                  
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white
                  ),
                  textAlign: TextAlign.center
                  
                  ),
              ),
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
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
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
                    
                   /*obscureText: _isObscure, style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(suffixIcon:),
                  border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                  ),
                  filled: true,
                  hintText: 'Password',
                  
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white
                  ),textAlign: TextAlign.center,
                */
                  
                  ),
              ),
            ),
            SizedBox(height: 20,),

             ElevatedButton(
               child:const Text('Sign Up',style: TextStyle(fontSize: 18),), onPressed: (){},
                style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                primary: Colors.white,onPrimary: Colors.black,
                 shape: CircleBorder()))
         ]
      )),
    );
    
  }
}
