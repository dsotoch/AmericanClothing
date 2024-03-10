

import 'package:flutter/material.dart';

class Loguearse  extends ChangeNotifier{
  late String _user;
  late String _pass;
  Loguearse() {
    _user = '';
    _pass = '';
  }
  Loguearse.fromUserAndPass(this._user, this._pass);

  String get user => _user;

  set user(String value) {
    _user = value;
    notifyListeners();
  }

  bool IniciarSesion(Loguearse objeto_loguearse) {
    return objeto_loguearse._user == _user && objeto_loguearse._pass == _pass;
  }

  String get pass => _pass;

  set pass(String value) {
    _pass = value;
    notifyListeners();
  }
}
