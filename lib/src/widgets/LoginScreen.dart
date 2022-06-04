// Francis Mori Bautista
import 'package:flutter/material.dart';

// Define a custom Form widget.
class LoginScreenForm extends StatefulWidget {
  const LoginScreenForm({super.key});

  @override
  LoginScreen createState() {
    return LoginScreen();
  }
}

class LoginScreen extends State<LoginScreenForm> {
  // const LoginScreen({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Scaffold(
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
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0)),
                const Text(
                  "Nice Memo",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0)),
                Container(
                  alignment: Alignment.centerLeft,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 32.0),
                  child: Column(
                    children: [
                      const Text(
                        "Inicio de sesión",
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 8),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu correo';
                            }
                            if (value.length < 7) {
                              return 'La longitud del correo no es válida';
                            }

                            bool emailValid = RegExp(
                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                .hasMatch(value!);

                            if (!emailValid) {
                              return 'Ingresa un mail valido';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelStyle:
                                  const TextStyle(color: Colors.deepPurple),
                              border: const UnderlineInputBorder(),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.deepPurple, width: 1.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Colors.grey,
                              labelText: 'Correo electronico',
                              hintText: 'Ingresa tu correo'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 8),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingresa tu clave';
                            }
                            if (value.length < 7) {
                              return 'La longitud minima es de 8 caracteres';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              labelStyle:
                                  const TextStyle(color: Colors.deepPurple),
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
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.deepPurple)),
                      child: Text('Iniciar sesion'.toUpperCase())),
                )),
                const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0))
              ],
            ),
          ),
        ));
  }
}
