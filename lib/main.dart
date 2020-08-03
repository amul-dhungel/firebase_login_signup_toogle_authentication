import 'package:flutter/material.dart';
import 'package:login_signup/authservice.dart';
import 'package:login_signup/toogbetween.dart';
import 'package:login_signup/views/bridgewrapper.dart';
import 'package:login_signup/views/home.dart';
// import 'package:login_signup/views/login.dart';
// import 'package:login_signup/views/register.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<String>.value(
      value: Service().user,
      child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}
