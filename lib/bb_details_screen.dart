import 'package:flutter/material.dart';

class BloodBankDetailsScreen extends StatefulWidget {
  final String name;
  final String address;
  final String email;

  const BloodBankDetailsScreen({
    Key? key,
    required this.name,
    required this.address,
    required this.email,
  }) : super(key: key);

  @override
  State<BloodBankDetailsScreen> createState() => _BloodBankDetailsScreenState();
}

class _BloodBankDetailsScreenState extends State<BloodBankDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 45,
          backgroundColor: Colors.red,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  "Name : ",
                  style: TextStyle(fontSize: 25),
                ),
                Text("${widget.name}", style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "Address :",
                  style: TextStyle(fontSize: 25),
                ),
                Text("${widget.address}", style: TextStyle(fontSize: 25)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "E mail:",
                  style: TextStyle(fontSize: 25),
                ),
                Text(
                  "${widget.email}",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Accept")),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: () {}, child: Text("Decline")),
              ],
            )
          ],
        ));
  }
}
