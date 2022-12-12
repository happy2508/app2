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
  int? amount;

  String type = "Income";
  DateTime selectedDate = DateTime.now();

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
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                hintText: ("Enter Customer"),
                border: InputBorder.none,
              ),
              onChanged: ((value) {
                amount = int.parse(value);
              }),
              style: TextStyle(
                fontSize: 25,
              ),
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
                    CupertinoIcons.calendar,
                    color: Colors.white,
                    size: 25,
                  )),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}",
              style: TextStyle(fontSize: 20),
            ),
            TextButton(
                onPressed: (() {
                  showDatePicker(
                      context: context,
                      initialDate: selectedDate,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));
                }),
                child: Text(
                  "Select Date",
                  style: TextStyle(fontSize: 20, color: Static.PrimaryColor),
                )),
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
                    fontSize: 18.0,
                    color: type == "Income" ? Colors.white : Colors.black,
                  ),
                ),
                selectedColor: Static.PrimaryColor,
                onSelected: (val) {
                  if (val) {
                    setState(() {
                      type = "Income";
                      if (type.isEmpty || type == "Expense") {
                        type = 'Income';
                      }
                    });
                  }
                },
                selected: type == "Income" ? true : false,
              ),
              SizedBox(
                width: 10.0,
              ),
              ChoiceChip(
                label: Text(
                  "Expense",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: type == "Expense" ? Colors.white : Colors.black,
                  ),
                ),
                selectedColor: Static.PrimaryColor,
                onSelected: (val) {
                  if (val) {
                    setState(() {
                      type = "Expense";

                      if (type.isEmpty || type == "Income") {
                        type = 'Expense';
                      }
                    });
                  }
                },
                selected: type == "Expense" ? true : false,
              ),
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Static.PrimaryColor)),
                  onPressed: (() {}),
                  child: Text("ADD Transaction"),
                )),
          ),
        ],
      ),
    );
  }
}
