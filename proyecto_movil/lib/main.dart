import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const AppMovil());
}

class AppMovil extends StatelessWidget {
  const AppMovil({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: const Column(
          children: <Widget>[
            Spacer(),
            CarouselSlider1(),
            //Spacer(),
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
      options: CarouselOptions(height: 400.0),
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
            height: 400,
        child: Column(
          //mainAxisSize: MainAxisSize.min,
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[
            //ListTile(
              //leading: Image.asset(
              Image.asset(
                pokemon,
                height: 200, // Adjust the height as needed
                width: 200, // Adjust the width as needed
                //scale: 2,
                fit: BoxFit.contain,
              )
            //),
          ],
        ),
      ),
      ),
    );
  }
}

