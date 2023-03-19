import 'package:flutter/material.dart';
import 'package:parcial2/json/recipes.dart';
import 'package:parcial2/temas/colores.dart';

class Recetas extends StatefulWidget {
  const Recetas({super.key});

  @override
  State<Recetas> createState() => _RecetasState();
}

class _RecetasState extends State<Recetas> {
  int MenuActivo = 0;

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
            'Recetas',
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
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text('Comida Rapida'),
                      SizedBox(
                        height: 10,
                      ),
                      getRecetasRapidas(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Ensaladas'),
                      SizedBox(
                        height: 10,
                      ),
                      getRecetasEnsaladas(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Postres'),
                      SizedBox(
                        height: 10,
                      ),
                      getRecetasPostres(),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  Widget getRecetasRapidas() {
    var tamanio = MediaQuery.of(context).size;
    double cardWidth = (tamanio.width - 2.0 * 3) / 3; // ancho de cada tarjeta
    return Column(
      children: [
        Container(
          child: Wrap(
            spacing: 2.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: List.generate(
              rapidas.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    rapidas[index]['title'],
                    rapidas[index]['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget getRecetasEnsaladas() {
    var tamanio = MediaQuery.of(context).size;
    double cardWidth = (tamanio.width - 2.0 * 3) / 3; // ancho de cada tarjeta
    return Column(
      children: [
        Container(
          child: Wrap(
            spacing: 2.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: List.generate(
              ensaladas.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    ensaladas[index]['title'],
                    ensaladas[index]['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget getRecetasPostres() {
    var tamanio = MediaQuery.of(context).size;
    double cardWidth = (tamanio.width - 2.0 * 3) / 3; // ancho de cada tarjeta
    return Column(
      children: [
        Container(
          child: Wrap(
            spacing: 2.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: List.generate(
              postres.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    postres[index]['title'],
                    postres[index]['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildCustomCard(String title, String image) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 800.0,
        ),
        width: 80.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 5,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
