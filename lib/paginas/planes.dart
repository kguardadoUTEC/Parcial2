import 'package:flutter/material.dart';
import 'package:parcial2/temas/colores.dart';

class Planes extends StatefulWidget {
  const Planes({super.key});

  @override
  State<Planes> createState() => _PlanesState();
}

class _PlanesState extends State<Planes> {
  int MenuActivo = 0;
  final String titulo1 = "Título 1";
  final String subtitulo1 = "Subtítulo 1";
  final String titulo2 = "Título 2";
  final String subtitulo2 = "Subtítulo 2";

  TextEditingController _nombreController = TextEditingController();
  TextEditingController _numeroTarjetaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: getAppBar(),
      body: getBody(),
    );
  }

 PreferredSizeWidget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          Text(
            'Planes',
            style: TextStyle(
              color: primary,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/person.jpg'),
            radius: 20,
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    return ListView(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Número de tarjeta',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'CVV',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Fecha de vencimineto',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: () {},
                child: Text('Guardar'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: primary,
                    textStyle: TextStyle(color: white)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
