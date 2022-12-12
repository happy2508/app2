import 'dart:ffi';

import 'package:app2/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'static.dart' as Static;

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Expanded(
        child: SizedBox(
          height: 150,
          child: ListView(children: [
            DrawerHeader(
                padding: EdgeInsets.all(10),
                child: UserAccountsDrawerHeader(
                  accountName: Text("harsh"),
                  accountEmail: Text("abc@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/profile-icon.png"),
                  ),
                )),
            ListTile(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.home,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              title: Text(
                "DashBoard",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.person_3_fill,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              title: Text(
                "Customers",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.person_2_fill,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              title: Text(
                "Clients",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.black),
              ),
            ),
            ListTile(
              leading: IconButton(
                  icon: Icon(
                    CupertinoIcons.money_dollar,
                    color: Colors.black,
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, MyRoutes.TransactionRoute)),
              title: Padding(
                padding: const EdgeInsets.only(right: 80),
                child: TextButton(
                  child: Text(
                    "Transactions",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 18),
                  ),
                  onPressed: () =>
                      Navigator.pushNamed(context, MyRoutes.TransactionRoute),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
