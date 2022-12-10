import 'package:app2/pages/addtransactions.dart';
import 'package:app2/pages/signup.dart';
import 'package:app2/pages/transactionspage.dart';
import 'package:app2/pages/homepage.dart';
import 'package:app2/pages/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "App 2", home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return MaterialApp(
      routes: {
        "/": (context) => SignUp(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.TransactionRoute: (context) => Transactions(),
        MyRoutes.addtransRoute: (context) => Addtransactions(),
        MyRoutes.signuproute: (context) => SignUp(),
      },
    );
  }
}

class MyRoutes {
  static String loginRoute = "/login";
  static String homeRoute = "/home";
  static String TransactionRoute = "/transactionpage";
  static String addtransRoute = "/addtrans";
  static String signuproute = "/signup";
}
