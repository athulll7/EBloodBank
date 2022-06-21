import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.red,
    ),
      body: SafeArea(child:
      Column(
        children: [
           const SizedBox(
            height: 300
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: const [Text('E BLOOD BANK',
                 style: TextStyle(
              color: Colors.black,fontSize: 28,fontWeight: FontWeight.w700
             ),
                     ),
                     ],           
           ),
           const SizedBox(
            height: 50
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               
             ElevatedButton(onPressed: (){}, child: Text('A+')),
             ElevatedButton(onPressed: (){}, child: Text('B+')),
              ElevatedButton(onPressed: (){}, child: Text('AB+')),
               ElevatedButton(onPressed: (){}, child: Text('O+'))
           ],),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
             ElevatedButton(onPressed: (){}, child: Text('A-')),
             ElevatedButton(onPressed: (){}, child: Text('B-')),
              ElevatedButton(onPressed: (){}, child: Text('AB-')),
               ElevatedButton(onPressed: (){}, child: Text('O-'))
           ],),
           
           
           ],
         ) ,
         )  
        
      
    


    );
  }
}
