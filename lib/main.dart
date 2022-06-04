import 'package:flutter/material.dart';

import 'package:nice_memo/src/widgets/Home.dart';
import 'package:nice_memo/src/widgets/SecondScreen.dart';
import 'package:nice_memo/src/widgets/LoginScreen.dart';
import 'package:nice_memo/src/widgets/AuthScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const AuthScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const LoginScreenForm(),
        '/register': (context) => const SecondScreenForm(),
        '/home': (context) => const Home()
      },
    ),
  );
}
