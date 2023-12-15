import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';

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
            TopBar(),
            //Spacer(),
          ],
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: const Text('top bar'),
        backgroundColor: Colors.blue,
        toolbarHeight: 150,
        //elevation: 1.00,
      );
  }
}




