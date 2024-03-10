import 'package:americanclothing/modelo/modelo_sugerencias.dart';
import 'package:flutter/material.dart';

class Lanzamientos extends StatelessWidget {
  final listaSugerencias = List<ModeloSugerencias>.empty();

  @override
  Widget build(BuildContext context) {
    List<ModeloSugerencias> listaSugerencias = [
      ModeloSugerencias(
          imagen: "sss", precio: 100.05, titulo: "Lavadora portatil"),
      ModeloSugerencias(
          imagen: "sss", precio: 100.05, titulo: "Lavadora portatil2"),
      ModeloSugerencias(
          imagen: "sss", precio: 100.05, titulo: "Lavadora portati3"),
      ModeloSugerencias(
          imagen: "sss", precio: 100.05, titulo: "Lavadora portatil4"),
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 8.0, mainAxisSpacing: 8.0),
      itemCount: listaSugerencias.length,
      itemBuilder: (context, index) {
        final sugerencia = listaSugerencias[index];
        return ListTile(
          title: Text(sugerencia.titulo),
          subtitle: Text(sugerencia.precio.toString()),
        );
      },
    );
  }
}
