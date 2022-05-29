// Jesus Leon Chavez
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1B3FE),
      appBar: AppBar(
        backgroundColor: const Color(0xFFE1B3FE),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const Image(image: AssetImage('assets/niceMemoLogo.png')),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0)),
            const Text(
              "Nice Memo",
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0)),
            Container(
              alignment: Alignment.centerLeft,
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 32.0),
              child: Column(
                children: [
                  const Text(
                    "Registro",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 16),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.deepPurple),
                          border: const UnderlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Colors.grey,
                          labelText: 'Nombre de usuario',
                          hintText: 'Ingresa tu nombre de usuario'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.deepPurple),
                          border: const UnderlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Colors.grey,
                          labelText: 'Contraseña',
                          hintText: 'Ingresa tu contraseña'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Colors.deepPurple),
                          border: const UnderlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.deepPurple, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fillColor: Colors.grey,
                          labelText: 'Contraseña',
                          hintText: 'Ingresa tu contraseña'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                  // Within the LoginScreen widget
                  onPressed: () {
                    // Navigate back to the first screen by popping the current route
                    // off the stack.
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple)),
                  child: Text('Registrarse'.toUpperCase())),
            )),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0))
          ],
        ),
      ),
    );
  }
}
