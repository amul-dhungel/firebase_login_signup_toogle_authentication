import 'package:flutter/material.dart';
import 'package:login_signup/toogbetween.dart';
import 'home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<String>(context);
    print(user);

    if (user == null) {
      return ToogleBetween();
    } else {
      return Home();
    }
  }
}
