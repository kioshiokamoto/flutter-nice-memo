// Sebastian Asis Romero
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),),
              const Text( "¡Hola Luis!", style: TextStyle(color: Colors.deepPurple, fontSize: 32,  fontWeight: FontWeight.bold)),
              Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
              const Text( "Esta es la lista de tus notas", style: TextStyle(color: Colors.grey, fontSize: 16)),
              Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
              const Text( "Mis notas", style: TextStyle(color: Colors.deepPurple, fontSize: 20)),
              Container(
                alignment: Alignment.centerLeft,
                padding:
                  const EdgeInsets.symmetric(vertical: 200.0, horizontal: 32.0),
                child: Column(children: [
                  const Image(image: AssetImage('assets/note.png')),
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0)),
                  const Text(
                    "Las notas que crees apareceran aqui",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
                  Align(
                    // alignment: Alignment.bottomCenter,
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
                          child: Text('Agregar'.toUpperCase())),
                  ),
                ],)
              ),
          ]))
      ),
    );
  }
}