import 'package:flutter/material.dart';
import 'package:login_signup/authservice.dart';

import 'login.dart';

class Register extends StatefulWidget {
  Function toogleBetween;
  Register({this.toogleBetween});
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final Service obj = new Service();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        actions: [
          FlatButton.icon(
              onPressed: () => widget.toogleBetween(),
              icon: Icon(Icons.person),
              label: Text("Login"))
        ],
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              SizedBox(
                width: 15,
              ),
              TextFormField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
              ),
              SizedBox(
                width: 15,
              ),
              FlatButton(
                  onPressed: () async {
                    dynamic result =
                        await obj.register(email.text, password.text);
                    if (result == null) {
                      print("hello");
                    }
                  },
                  color: Colors.blue,
                  child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }
}
