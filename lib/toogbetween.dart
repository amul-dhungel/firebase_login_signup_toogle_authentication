import 'package:flutter/material.dart';
import 'package:login_signup/views/login.dart';
import 'package:login_signup/views/register.dart';

class ToogleBetween extends StatefulWidget {
  @override
  _ToogleBetweenState createState() => _ToogleBetweenState();
}

class _ToogleBetweenState extends State<ToogleBetween> {
  bool signIn = true; //puting value of sign in true as first

  toggleBetween() {
    setState(() {
      signIn = !signIn; //declaring opposite value of it in own value.
    });
  }

  @override
  Widget build(BuildContext context) {
    if (signIn) {
      return Login(
        toogleBetween: toggleBetween,
      );
    } else {
      return Register(toogleBetween: toggleBetween);
    }
  }
}
