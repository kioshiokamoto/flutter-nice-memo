import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1B3FE),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Image(image: AssetImage('assets/niceMemoLogo.png')),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0)),
            const Text(
              "Nice Memo",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 0.0)),
            const Text(
              "Tu app de notas siempre disponible",
            ),
            ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/login');
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurple)),
              child: Text(
                'Iniciar sesión'.toUpperCase(),
              ),
            ),
            ElevatedButton(
              // Within the `FirstScreen` widget
              onPressed: () {
                // Navigate to the second screen using a named route.
                Navigator.pushNamed(context, '/register');
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.deepPurple)),
              child: Text('Registrarse'.toUpperCase()),
            ),
          ],
        ),
      )),
    );
  }
}
