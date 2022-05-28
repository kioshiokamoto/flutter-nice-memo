import 'package:flutter/material.dart';

import 'package:nice_memo/src/widgets/SecondScreen.dart';
import 'package:nice_memo/src/widgets/FirstScreen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/login': (context) => const SecondScreen(),
        '/register': (context) => const SecondScreen(),
      },
    ),
  );
}
