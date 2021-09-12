import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Prueba(),
  ));
}

class Prueba extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<Prueba> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 312.0,
          height: 70.0,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Yes, that is correct'),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ), //BorderRadius.all
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        SizedBox(
          width: 312.0,
          height: 70.0,
          child: FloatingActionButton.extended(
            onPressed: () {},
            label: Text('No, this is not my property'),
            backgroundColor: Colors.white.withOpacity(0.20),
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.white, width: 2.0),
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
