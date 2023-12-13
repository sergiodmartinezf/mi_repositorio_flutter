import 'package:flutter/material.dart';

// Hace correr la aplicación
void main() {
  runApp(const app1());
}

// Aplicación en la que se va a trabajar
class app1 extends StatelessWidget {
  const app1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Ejemplo Flutter')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

// Botón a presionar en la aplicación
class ElevatedButtonExample extends StatefulWidget {
  const ElevatedButtonExample({super.key});

  @override
  State<ElevatedButtonExample> createState() => _ElevatedButtonExampleState();
}

// Define el estado del botón de acuerdo a si está presionado o no.
class _ElevatedButtonExampleState extends State<ElevatedButtonExample> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
              setState(() {
                //void main(){
                  print('Hola Mundo');
                //}
            });
            },
            child: const Text('Presiona para Saludar'),
          ),
        ],
      ),
    );
  }
}

