import 'package:flutter/material.dart';
import 'package:login_signup/authservice.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Service obj = new Service();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          actions: [
            FlatButton.icon(
                onPressed: () async {
                  await obj.signOut();
                },
                icon: Icon(Icons.person),
                label: Text("Logout"))
          ],
        ),
        body: Text(
          "Home",
          style: TextStyle(
            fontSize: 30,
          ),
        ));
  }
}
