import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
 
 class Requests_screen extends StatelessWidget {
String patientname,hospitalname,requiredblood;

Requests_screen({ required this.patientname,required this.hospitalname,required this.requiredblood});
  //const Requests_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.red,
          toolbarHeight: 40,
        ),
        body: ListView.separated(
            itemBuilder: ((context, index) {
              return Card(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Patient Name: ${patientname}",style: TextStyle(fontSize: 28) ,),
                           //   Text("Name $index",
                            //  style: TextStyle(fontSize: 28),
                            //  ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Hospital Name : ${hospitalname} ",style: TextStyle(fontSize: 23),),
                            //  Text(
                             //   "Hospital $index",
                            //    style: TextStyle(fontSize: 23),
                           //   ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Blood Required:${requiredblood} ",style: TextStyle(
                                  fontSize: 20,color: Colors.red,fontWeight: FontWeight.w500),
                               // style: TextStyle(fontSize: 14),
                              ),
                            /*  Text(
                                " A+",
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500),
                              ),*/
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    FlutterPhoneDirectCaller.callNumber(
                                        '9605048647');
                                  },
                                  child: const Text(
                                    'Call',
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(100, 20),
                                    primary: Color.fromRGBO(52, 151, 238, 1),
                                    onPrimary: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(3.0),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
            separatorBuilder: ((context, index) => Divider()),
            itemCount: 15));

    
  }
}

