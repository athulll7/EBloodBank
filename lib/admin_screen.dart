import 'package:ebloodbank/bb_details_screen.dart';
import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Colors.red,
          title: Text("Blood bank requests"),
        ),
        body: ListView.separated(
          itemBuilder: (ctx, index) {
            return Card(
                child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => BloodBankDetailsScreen(
                          name: "Blood bank $index",
                          address: "Address $index",
                          email: "email $index",
                        )));
              },
              child: Text("Blood Bank $index"),
            ));
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 15,
        ));
  }
}
