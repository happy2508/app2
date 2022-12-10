import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'static.dart' as Static;

class Addtransactions extends StatefulWidget {
  const Addtransactions({super.key});

  @override
  State<Addtransactions> createState() => _AddtransactionsState();
}

class _AddtransactionsState extends State<Addtransactions> {
  var bval = ['1', '2', '3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Static.PrimaryColor,
        title: Center(child: Text("Add Transactions")),
      ),
      backgroundColor: Color(0xffe2e7ef),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                  decoration: BoxDecoration(
                      color: Static.PrimaryColor,
                      borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.white,
                    size: 25,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                hintText: ("Enter Amount"),
                border: InputBorder.none,
              ),
              style: TextStyle(
                fontSize: 25,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
            )),
          ]),
          SizedBox(
            height: 20,
          ),
          Row(children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                  decoration: BoxDecoration(
                      color: Static.PrimaryColor,
                      borderRadius: BorderRadius.circular(16.0)),
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    CupertinoIcons.person,
                    color: Colors.white,
                    size: 25,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            //Expanded(child: DropdownButton(items: [], onChanged: onChanged)),
          ]),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: Row(children: [
              SizedBox(
                width: 10,
              ),
              ChoiceChip(
                label: Text(
                  "Income",
                  style: TextStyle(
                      color: Type == "Income" ? Colors.white : Colors.black),
                ),
                selectedColor: Static.PrimaryColor,
                selected: Type == "Income" ? true : false,
                onSelected: ((value) {
                  if (value) {
                    setState(() {});
                  }
                }),
              ),
              SizedBox(
                width: 10,
              ),
              ChoiceChip(
                label: Text(
                  "Expense",
                  style: TextStyle(
                      color: Type == "Expense" ? Colors.white : Colors.black),
                ),
                selectedColor: Static.PrimaryColor,
                selected: Type == "Expense" ? true : false,
                onSelected: ((value) {
                  if (value) {
                    setState(() {});
                  }
                }),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  onPressed: (() {}),
                  child: Text("ADD Transaction"),
                )),
          ),
        ],
      ),
    );
  }
}
