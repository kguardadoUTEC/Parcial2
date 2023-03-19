import 'package:flutter/material.dart';
import 'package:parcial2/temas/colores.dart';

class Cuentas extends StatefulWidget {
  const Cuentas({super.key});

  @override
  State<Cuentas> createState() => _CuentasState();
}

class _CuentasState extends State<Cuentas> {

  final String nombre = "Kevin Adonay Guardado Pocasangre";
  final String carnet = "25-0944-2019";
  final String nombre2 = "Wendy Carolina Claros Rivera";
  final String carnet2 = "25-0378-2019";

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
            'Cuentas',
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
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center, // Alineación vertical centrada
      crossAxisAlignment: CrossAxisAlignment.center, // Alineación horizontal centrada
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Text(
                nombre,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                carnet,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 20),
              Text(
                nombre2,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                carnet2,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
}