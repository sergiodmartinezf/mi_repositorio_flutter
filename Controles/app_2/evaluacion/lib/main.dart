import 'package:flutter/material.dart';
//Integrantes: Sergio Martínez, Gonzalo Garcés
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: LogIn(),
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Home'),
        ),
      ),
    );
  }
}

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.lightBlue],
          ),
        ),
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 100.0),
              const Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              
              //SizedBox Contenedor de caja de texto email
              const SizedBox(height: 40.0),
              SizedBox(
                width: 350,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.always,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.white),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null &&
                            value.isNotEmpty &&
                            value.contains('@') == false)
                        ? 'El correo no es válido.'
                        : null;
                  },
                ),
              ),
              
              //SizedBox Contenedor de caja de texto contraseña
              const SizedBox(height: 10.0),
              SizedBox(
                width: 350,
                child: TextFormField(
                  autovalidateMode:
                      AutovalidateMode.always, // Validar constantemente
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.white),
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(color: Colors.white),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  validator: (String? value) {
                    return (value != null &&
                            value.isNotEmpty &&
                            value.length < 8)
                        ? 'La contraseña es demasiado corta.'
                        : null;
                  },
                ),
              ),
              
              //SizedBox Contenedor de hipervinculo 
              const SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.only(right: 35.0, top: 20.0),
                    child: const Text(
                      '¿Olvidaste tu contraseña',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (newValue) {},
                  ),
                  const Text(
                    'Recuerda tus datos',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              //SizedBox Contenedor de boton login
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp2()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(15.0),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Color.fromARGB(255, 15, 69, 96)),
                ),
              ),
              const SizedBox(height: 40.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButtonFace(),
                  SizedBox(width: 10.0),
                  IconButtoTra(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//Clases para crear iconos dentro de las cajas de texto
class IconButtonFace extends StatelessWidget {
  const IconButtonFace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.facebook),
          onPressed: () {},
          color: Colors.white,
        ),
      ],
    );
  }
}

class IconButtoTra extends StatelessWidget {
  const IconButtoTra({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
            icon: const Icon(Icons.g_translate),
            onPressed: () {},
            color: Colors.white),
      ],
    );
  }
}