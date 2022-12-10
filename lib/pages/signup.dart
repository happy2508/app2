import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(40),
          child: Container(
            height: 180,
            width: 180,
            child: Lottie.asset(
              "assets/images/117764-sign-up.json",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "Sign Up",
              style: TextStyle(
                  fontSize: 35,
                  color: Color.fromARGB(255, 51, 79, 238),
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Card(
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.person_fill,
                        color: Colors.black,
                      ),
                      title: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "    Enter Business Name ",
                        ),
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                Card(
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.text_insert,
                        color: Colors.black,
                      ),
                      title: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "    Enter Name ",
                        ),
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                Card(
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.lock_fill,
                        color: Colors.black,
                      ),
                      title: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "    Enter Password ",
                        ),
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                Card(
                    child: ListTile(
                      leading: Icon(
                        CupertinoIcons.lock_fill,
                        color: Colors.black,
                      ),
                      title: TextFormField(
                        decoration: InputDecoration.collapsed(
                          hintText: "    Enter Confirm Password ",
                        ),
                      ),
                    ),
                    shape: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ],
            )),
        InkWell(
          onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "Sign Up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 51, 79, 238),
                borderRadius: BorderRadius.circular(10)),
          ),
        ),
        TextButton(
            onPressed: (() =>
                Navigator.pushNamed(context, MyRoutes.loginRoute)),
            child: Text(
              "Login",
            ))
      ]),
    );
  }
}
