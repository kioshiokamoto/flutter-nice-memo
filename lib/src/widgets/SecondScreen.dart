// Jesus Leon Chavez
import 'package:flutter/material.dart';

// Define a custom Form widget.
class SecondScreenForm extends StatefulWidget {
  const SecondScreenForm({super.key});

  @override
  SecondScreen createState() {
    return SecondScreen();
  }
}

class SecondScreen extends State<SecondScreenForm> {
  final _formKey = GlobalKey<FormState>();

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
          key: _formKey,
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
                      validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu nombre';
                            }
                            return null;
                          },
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
                      validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu contrase??a';
                            }
                            if (value.length < 7) {
                              return 'La longitud minima es de 8 caracteres';
                            }
                            return null;
                          },
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
                          labelText: 'Contrase??a',
                          hintText: 'Ingresa tu contrase??a'),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                    child: TextFormField(
                      validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu contrase??a';
                            }
                            if (value.length < 7) {
                              return 'La longitud minima es de 8 caracteres';
                            }
                            return null;
                          },
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
                          labelText: 'Contrase??a',
                          hintText: 'Ingresa tu contrase??a'),  
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
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                          Navigator.pushNamed(context, '/home');
                        }
                        // Navigate to the home screen using a named route.
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
