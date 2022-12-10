import 'package:app2/main.dart';
import 'package:app2/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'static.dart' as Static;

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 300,
            width: 300,
            child: Lottie.asset(
              "assets/images/69526-business.json",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Text(
              "Login",
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
                          hintText: "    Enter Mobile Number ",
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
              ],
            )),
        InkWell(
          onTap: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
          child: Container(
            width: 100,
            height: 50,
            alignment: Alignment.center,
            child: Text(
              "LOG IN",
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
            onPressed: () => Navigator.pushNamed(context, MyRoutes.signuproute),
            child: Text(
              "Sign Up",
            ))
      ]),
    );
  }
}
