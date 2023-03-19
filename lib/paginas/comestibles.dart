import 'package:flutter/material.dart';
import 'package:parcial2/json/comestibles.dart';
import 'package:parcial2/temas/colores.dart';

class Comestibles extends StatefulWidget {
  const Comestibles({super.key});

  @override
  State<Comestibles> createState() => _ComestiblesState();
}

class _ComestiblesState extends State<Comestibles> {
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
            'Comestibles',
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
                      Text('Vegetales'),
                      SizedBox(
                        height: 10,
                      ),
                      getComestiblesVegetales(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Frutas'),
                      SizedBox(
                        height: 10,
                      ),
                      getComestiblesFrutas(),
                      SizedBox(
                        height: 20,
                      ),
                      Text('Carnes'),
                      SizedBox(
                        height: 10,
                      ),
                      getComestiblesCarnes(),
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

  Widget getComestiblesVegetales() {
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
              vegetales.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    vegetales[index]['title'],
                    vegetales[index]['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget getComestiblesFrutas() {
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
              frutas.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    frutas[index]['title'],
                    frutas[index]['image'],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget getComestiblesCarnes() {
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
              carnes.length,
              (index) {
                return SizedBox(
                  width: cardWidth - 12,
                  child: _buildCustomCard(
                    carnes[index]['title'],
                    carnes[index]['image'],
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
