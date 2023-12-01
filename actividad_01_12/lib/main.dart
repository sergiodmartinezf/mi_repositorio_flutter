import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Hace correr la aplicación
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Pokedex')),
        body: const Column(
          children: <Widget>[
            Spacer(),
            CarouselSlider1(),
            //card1(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

// Slider con las imágenes de los pokemones
class CarouselSlider1 extends StatelessWidget {
const CarouselSlider1({super.key});

@override
// Widget para generar el slider
Widget build(BuildContext context) {
	return CarouselSlider(
      options: CarouselOptions(height: 600.0),
      items: [
        // Crea los card para cada pokemon y se ponen en el slider
        buildCard('charmander.png'),
        buildCard('bulbasaur.png'),
        buildCard('squirtle.png')
      ]
  );
}

// Widget para generar los card
Widget buildCard(String pokemon) {
    return Center(
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: SizedBox(
            width: 260,
            height: 340,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
              leading: Image.asset(
                pokemon,
                height: 300, // Adjust the height as needed
                width: 300, // Adjust the width as needed
                fit: BoxFit.contain,
              )
            ),
          ],
        ),
      ),
      ),
    );
  }
}

