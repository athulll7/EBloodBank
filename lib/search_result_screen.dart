import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Search_result_screen extends StatelessWidget {
  const Search_result_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        toolbarHeight: 40,
      ),
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "General Hospital Kasaragod",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Old busstand,Thalayangadi,Kasaragod",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "Available : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            "5 UNITS ",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "District Hospital Kasaragod",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Karattuvayal,karahangad",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "Available : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            " 1 UNITS ",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sonu",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Cheruvathoor,Nieshwar",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "Last Donated : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            " 10/05/2021 ",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber('89847999382');
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Athul",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Uliyathadukka,Vidyanagar",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                       children: [
                          Text(
                            "Last Donated : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            " 01/01/2022 ",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber('6282114621');
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Aboobacker",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "povval,Cherkala",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "ALast Donoted : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            " 10/03/2022",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber('9605048647');
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Card(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sanal LS",
                        style: TextStyle(fontSize: 25),
                      ),
                      Text(
                        "Iriyani,Bovikanm",
                        style: TextStyle(fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "Last Donated : ",
                            style: TextStyle(fontSize: 19),
                          ),
                          Text(
                            " 17/04/2022 ",
                            style: TextStyle(fontSize: 19, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.call,
                  ),
                  iconSize: 38,
                  color: Colors.blue,
                  onPressed: () {
                    FlutterPhoneDirectCaller.callNumber('8943650493');
                  },
                )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
