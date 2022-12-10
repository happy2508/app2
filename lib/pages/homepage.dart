import 'package:app2/pages/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'static.dart' as Static;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Static.PrimaryColor,
          title: Text("App 2"),
        ),
        body: Center(
          child: Container(),
        ),
        drawer: DrawerPage());
  }
}
