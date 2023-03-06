import 'package:campus_ease/loginScreens/initialWelcomeScreen.dart';
import 'package:campus_ease/loginScreens/signUpPage1.dart';
import 'package:flutter/material.dart';

import 'loginScreens/signUpPage2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: LoginScreenOne(),
      );
  }
}

