import 'dart:ui';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownvalue = 'Select District';  
 
  var items = [   
    'Alappuzha',
    'Ernakulam',
    'Kannur',
    'Kasaragod',
    'Kollam','Kottayam','Wayanad','Pathanamthitta','Idukki','Malappuram','Kozhiode','Trissur','Palakkad','Tiruvanathapuram'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    drawer: Drawer(backgroundColor: Colors.red,
      child:ListView(
        children: [
          Column(
            children: [SizedBox(height: 50,),
            Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text('Donor Login',style: TextStyle(fontSize: 28,color:Colors.white),),
                onTap: (){},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text('Blood Bank Login',style: TextStyle(fontSize: 28,color:Colors.white ),),
                onTap: (){},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text('Requests',style: TextStyle(fontSize: 28,color:Colors.white ),),
                onTap: (){},
              ),
              Divider(
                color: Colors.white,
              ),
              ListTile(
                title: Text('Raise Request',style: TextStyle(fontSize: 28,color:Colors.white ),),
                onTap: (){},
              ),
              Divider(
                color: Colors.white,
              ),
               
            ],
          )
        ],
      )),
    appBar: AppBar(
      backgroundColor: Colors.red ,toolbarHeight: 40,
    ),
      body: SafeArea(child:
      Column(
        children: [
            SizedBox(
            height: 50,
           ),
           Image(
                 
                 image: AssetImage('assets/blood_drop.png'),height: 180,
               ),
               SizedBox(
            height: 30,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const [Text('E BLOOD BANK',
                 style: TextStyle(
              color: Colors.black,fontSize: 32,fontWeight: FontWeight.w700
             ),
                     ),
                     ],           
           ),
           const SizedBox(
            height: 50
           ),
           Container(width: MediaQuery.of(context).size.width*.82,
             child: DropdownButtonHideUnderline(
               child: DropdownButtonFormField(
                 decoration:InputDecoration(
                   border: OutlineInputBorder(
                     borderRadius: BorderRadius.all(Radius.circular(15))
                   )
                 ),
                 hint: Text(dropdownvalue,style: TextStyle(fontSize: 19),),
               
                 icon: const Icon(Icons.keyboard_arrow_down),   
                  
                 items: items.map((String items) {
                   return DropdownMenuItem(
                     value: items,
                     child: Text(items,style: TextStyle(fontSize: 19),),
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
          SizedBox(
            height: 55,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
                SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('A+',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('B+',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('AB+',style: TextStyle(fontSize: 20),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('O+',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             
              
           ],),
           SizedBox(
            height:25 ,
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('A-',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('B-',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('AB-',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             SizedBox(
              height: 50,width: 70,
              child: ElevatedButton(onPressed: (){}, child: Text('O-',style: TextStyle(fontSize: 23),),style: ElevatedButton.styleFrom(primary: Colors.red))),
             
           ],),
           SizedBox(
            height: 50,
           ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           IconButton(onPressed: (){}, icon: Icon(Icons.search),iconSize: 80,focusColor: Colors.black,)
           ],),
           
           
           ],
         ) ,
         )  
        
      
    


    );
  }
}
