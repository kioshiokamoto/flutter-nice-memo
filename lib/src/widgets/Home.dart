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
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12.0, horizontal: 0.0),
                    ),
                    const Text("¡Hola Luis!",
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 32,
                            fontWeight: FontWeight.bold)),
                    Padding(padding: EdgeInsets.symmetric(vertical: 4.0)),
                    const Text("Esta es la lista de tus notas",
                        style: TextStyle(color: Colors.grey, fontSize: 16)),
                    Padding(padding: EdgeInsets.symmetric(vertical: 8.0)),
                    const Text("Mis notas",
                        style:
                            TextStyle(color: Colors.deepPurple, fontSize: 20)),
                    Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(
                            vertical: 200.0, horizontal: 32.0),
                        child: Column(
                          children: [
                            const Image(image: AssetImage('assets/note.png')),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 6.0)),
                            const Text(
                              "Las notas que crees apareceran aqui",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 4.0)),
                            Align(
                              // alignment: Alignment.bottomCenter,
                              child: ElevatedButton(
                                  // Within the LoginScreen widget
                                  onPressed: () async {
                                    await showInformationDialog(context);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.deepPurple)),
                                  child: Text('Agregar'.toUpperCase())),
                            ),
                          ],
                        )),
                  ]))),
    );
  }
}

Future<void> showInformationDialog(BuildContext context) async {
  return await showDialog(
      context: context,
      builder: (context) {
        final TextEditingController _textEditingController =
            TextEditingController();
        bool? isChecked = false;
        return AlertDialog(
          content: Form(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
              ),
              const Text(
                "Agregar",
                style: TextStyle(
                    color: Color.fromARGB(255, 19, 17, 22),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      value: isChecked,
                      onChanged: (checked) {
                        isChecked = checked;
                      }),
                  Text("Agregar nota ")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      value: isChecked,
                      onChanged: (checked) {
                        isChecked = checked;
                      }),
                  Text("Agregar lista ")
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      value: isChecked,
                      onChanged: (checked) {
                        isChecked = checked;
                      }),
                  Text("Agregar etiqueta ")
                ],
              )
            ],
          )),
          actions: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Agregar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}
