import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPagestate();
  }
}

class _ContadorPagestate extends State<ContadorPage> {
  final _estiloTexto = TextStyle(fontSize: 25);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Titulo'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Número de clicks', style: _estiloTexto),
              Text('$_conteo', style: _estiloTexto),
            ],
          ),
        ),
        /* floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola mundo!');
          _conteo++;

          setState(() {});
        },
      ),

      */

        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _reset,
        ),
        Expanded(
          child: SizedBox(),
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _sustraer,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _sustraer() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
