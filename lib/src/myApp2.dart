import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        title: 'Bienvenido',
        home: Scaffold(
          body: const Center(child: Text('Press the button below!')),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add your onPressed code here!
            },
            child: const Icon(Icons.navigation),
            backgroundColor: Colors.green,
          ),
        ));
  }
}
