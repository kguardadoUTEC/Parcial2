import 'package:flutter/material.dart';
import 'package:parcial2/paginas/account.dart';
import 'package:parcial2/paginas/recetas.dart';
import 'package:parcial2/paginas/comestibles.dart';
import 'package:parcial2/paginas/planes.dart';
import 'package:parcial2/temas/colores.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: bgColor,
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
        Recetas(),      
        Planes(),
        Comestibles(),
        Cuentas(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [
      Icons.restaurant_menu,
      Icons.list,
      Icons.shopping_cart,
      Icons.account_circle,
    ];
    List textoItems = [
      "Recetas",
      "Planes",
      "Comestibles",
      "Cuenta",
    ];
    return Container(
      height: 55,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(textoItems.length, (index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      paginaIndex = index;
                    });
                  },
                  child: Column(
                    children: [
                      Icon(
                        iconosItems[index],
                        color: paginaIndex == index
                            ? primary
                            : grisColor,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(textoItems[index],
                          style: TextStyle(
                              fontSize: 10,
                              color: paginaIndex == index
                                  ? primary
                                  : black.withOpacity(0.5))),
                    ],
                  ),
                );
              })),
        ),
      ),
    );
  }
}
