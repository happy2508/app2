import 'package:app2/main.dart';
import 'package:app2/pages/addtransactions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'static.dart' as Static;

class Transactions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        heroTag: "btn2",
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
        onPressed: () => Navigator.pushNamed(context, MyRoutes.addtransRoute),
        child: Icon(
          CupertinoIcons.arrow_up_arrow_down,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
          backgroundColor: Static.PrimaryColor,
          title: Center(
              child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text("Transactions"),
          ))),
    );
  }
}
