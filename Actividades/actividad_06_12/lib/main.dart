import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Hace correr la aplicación
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget de aplicación en sí
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExampleApp(),
    );
  }
}

// Slider con las imágenes de los pokemones
class BottomNavigationBarExampleApp extends StatelessWidget {
const BottomNavigationBarExampleApp({super.key});


@override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    CarouselSlider( // Inicia carrusel
      options: CarouselOptions(height: 400.0),
      items: [
        Center( // Inicia primer elemento de carrusel
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
            width: 260,
            height: 400,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
              Image.asset(
                'charmander.png',
                height: 200, // Tamaño de la imágen
                width: 200, // Tamaño de la imágen
                fit: BoxFit.contain,
              )
          ],
        ),
      ),
      ),
    ), // Termina primer elemento de carrusel
        Center(// Inicia segundo elemento de carrusel
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
            width: 260,
            height: 400,
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
              Image.asset(
                'bulbasaur.png',
                height: 200, // Tamaño de la imágen
                width: 200, // Tamaño de la imágen
                fit: BoxFit.contain,
              )
            //),
          ],
        ),
      ),
      ),
    ), // Termina segundo elemento de carrusel
        Center(// Inicia tercer elemento de carrusel
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
            width: 260,
            height: 400,
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
              Image.asset(
                'squirtle.png',
                height: 200, // Tamaño de la imágen
                width: 200, // Tamaño de la imágen
                fit: BoxFit.contain,
              )
            //),
          ],
        ),
      ),
      ),
    ), // Termina tercer elemento de carrusel
      ]
  ) , // Termina carrusel
    Center( // Inicia página de perfil
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
            width: 260,
            height: 400,
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
              Image.asset(
                'perfil.png',
                height: 170, // Tamaño de la imágen
                width: 170, // Tamaño de la imágen
                fit: BoxFit.contain,
              ),
              ElevatedButton(
              onPressed: () {},
              child: const Text('Editar Perfil'),
              )
            //),
          ],
        ),
      ),
      ),
    ), // Termina página de perfil
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi App con Tabs'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Carrusel',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imágen y Botón',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 119, 79, 165),
        onTap: _onItemTapped,
      ),
    );
  }
    }



