import 'package:flutter/material.dart';

class Donor_login_screen extends StatefulWidget {
  const Donor_login_screen({ Key? key }) : super(key: key);

  @override
  State<Donor_login_screen> createState() => _Donor_login_screenState();
}

class _Donor_login_screenState extends State<Donor_login_screen> {
  bool _isObscure=true;
  @override
  Widget build(BuildContext context) { //git init git add . git commit -m "fifth commit"   git config --global user.name "Rahulckoovara"   git remote add origin https://github.com/athulll7/EBloodBank.git
    return Scaffold(                    //git push origin
      backgroundColor: Colors.red,
      body: SafeArea(child: 
      Center(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Text('Donor Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
            ,),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container( 
                child: TextFormField( style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  
                  filled: true,
                  hintText: 'Name',
                  
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
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  hintText: 'Last Donated',
                  
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
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  filled: true,
                  hintText: 'Mobile Number',
                  
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white
                  ),textAlign: TextAlign.center,
                  
                  ),
              ),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                
                child: TextFormField(obscureText: _isObscure,
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
                    
                  
                  ),
              ),
            ),
            ElevatedButton(
               child:const Text('Sign Up',style: TextStyle(fontSize: 18),), onPressed: (){},
                style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                primary: Colors.white,onPrimary: Colors.black,
                 shape: CircleBorder()))
          ],
        ),
      )
      ),
    );
    
  }
}
    
  
