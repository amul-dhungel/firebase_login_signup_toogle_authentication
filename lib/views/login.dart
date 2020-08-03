import 'package:flutter/material.dart';
import 'package:login_signup/authservice.dart';

class Login extends StatefulWidget {
  Function toogleBetween;
  Login({this.toogleBetween});
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  final Service obj = new Service();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        actions: [
          FlatButton.icon(
              onPressed: () => widget.toogleBetween(),
              icon: Icon(Icons.person),
              label: Text("Register"))
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
                    dynamic result = await obj.signInWithEmailAndPassword(
                        email.text, password.text);
                  },
                  color: Colors.blue,
                  child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
