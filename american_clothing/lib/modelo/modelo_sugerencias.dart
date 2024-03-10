import 'package:flutter/material.dart';

class ModeloSugerencias extends ChangeNotifier {
  late String _imagen;
  late double _precio;
  late String _titulo;
  ModeloSugerencias({
    required String imagen,
    required double precio,
    required String titulo,
  }) {
    _imagen = imagen;
    _precio = precio;
    _titulo = titulo;
  }

  String get imagen => _imagen;
  double get precio => _precio;
  String get titulo => _titulo;

  void setImagen(String imagen) {
    _imagen = imagen;
    notifyListeners();
  }

  void setPrecio(double precio) {
    _precio = precio;
    notifyListeners();
  }

  void setTitulo(String titulo) {
    _titulo = titulo;
    notifyListeners();
  }
}
