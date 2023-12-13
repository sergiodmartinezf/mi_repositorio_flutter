import 'package:flutter/material.dart';

// Hace correr la aplicación
void main() {
  runApp(const CardExampleApp());
}


// Aplicación
class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Sedes Universidad de Los Lagos')),
        body: const Column(
          children: <Widget>[
            Spacer(),
            card1(),
            card2(),
            card3(),
            Spacer(),
          ],
        ),
      ),
    );
  }


}

// Primer card con primera imágen y descripción
class card1 extends StatelessWidget {
  const card1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,

        child: SizedBox(
            width: 300,
            height: 200,

        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: <Widget>[Image.asset(
                'foto1.png',
                width: 250,
                height: 150,
              ), // Añade la imágen
            //),
            const Text('Ulagos Sede Osorno')
          ],
        ),
      ),


      ),
    );
  }
}

// Segundo card con segunda imágen y descripción
class card2 extends StatelessWidget {
  const card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('Descripción2'),
          ),
        ),
      ),
    );
  }
}

// Tercer card con tercera imágen y descripción
class card3 extends StatelessWidget {
  const card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 300,
            height: 100,
            child: Text('Descripción3'),
          ),
        ),
      ),
    );
  }
}





// Clase del botón que redirige a la página de Ulagos
class boton1 extends StatelessWidget {
  const boton1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: const ElevatedButtonExample(),
      ),
    );
  }
}

// Botón a presionar que redirige a la página de Ulagos
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
          //ElevatedButton(
            //style: style,
            //onPressed: null,
            //child: const Text('Disabled'),
          //),
          //const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {},
            child: const Text('Link'),
          ),
        ],
      ),
    );
  }
}
