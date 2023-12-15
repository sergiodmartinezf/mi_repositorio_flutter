import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LogIn(),
      ),
    );
  }
}
class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            const SizedBox(height: 20.0),
            const Text(
              'Login',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            const SizedBox(height: 40.0),
            SizedBox(
              width: 300, // Ajusta el ancho según tus necesidades
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always,// Validar constantemente
                decoration: const InputDecoration(
                 // Icon(Icons.email),
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                //onSaved: (String? value) {
                //  debugPrint(
                //    'Value for field $index saved as "$value"');
                //},
                //validator: (String? value) {
                //  return (value != null && value.length < 10  && value.contains('@') == false) ? 'El correo ingresado no es válido.' : null;
                //},
                validator: (String? value) {
                  return (value != null && value.isNotEmpty && value.contains('@') == false)? 'El correo no es válido.': null;
                },
                
              ),
            ),
            const SizedBox(height: 10.0),
            SizedBox(
              width: 300, // Ajusta el ancho según tus necesidades
              child: TextFormField(
                autovalidateMode: AutovalidateMode.always, // Validar constantemente
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
                ),
                validator: (String? value) {
                  return (value != null && value.isNotEmpty && value.length < 8)? 'La contraseña es demasiado corta.': null;
                },
              ),
            ),
            const SizedBox(height: 70.0),
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(300, 50),
                padding: const EdgeInsets.all(15.0),
              ),
              child: const Text('Iniciar Sesión'),
            ),
            const SizedBox(height: 10.0),
            
            const SizedBox(height: 10.0),
            GestureDetector(
              onTap: () {
                
              },
              child: const Text(
                '¿Olvidaste tu contraseña',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const IconButtonExample(),
          ],
        ),
      ),
    );
  }
}

//double _volume = 0.0;

class IconButtonExample extends StatefulWidget {
  const IconButtonExample({super.key});

  @override
  State<IconButtonExample> createState() => _IconButtonExampleState();
}

class _IconButtonExampleState extends State<IconButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.email),
          
          onPressed: () {
            
          },
        ),
       
      ],
    );
  }
}

