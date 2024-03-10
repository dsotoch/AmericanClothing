import 'package:americanclothing/vista/lansamientos.dart';
import 'package:americanclothing/vista/sugerencias.dart';
import 'package:americanclothing/vista/vender.dart';
import 'package:americanclothing/vista/venderDialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.circle)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        title: SizedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "American",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: size.width * 0.05),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    "MarketPlace",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.05),
                  ),
                  const SizedBox(
                    width: 2.0,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        VenderDialog()
                            .mostrarDialogo(context, size.width * 0.05);
                        /*Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Vender(),
                          ),
                        );*/
                      },
                      icon: const Icon(Icons.edit_note),
                      label: const Text("Vender"),
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.greenAccent)),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.category),
                      label: const Text("Categorias"),
                      style: const ButtonStyle(
                          foregroundColor:
                              MaterialStatePropertyAll(Colors.white),
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.greenAccent)),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Sugerencias de Hoy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Trujillo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.gps_fixed),
                        style: const ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.blue),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Sugerencias(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    child: Text(
                      "Nuevos Lanzamientos",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        child: Text(
                          "Trujillo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.gps_fixed,
                            color: Colors.blue,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Lanzamientos(),
            ],
          ),
        ),
      ),
    );
  }
}
