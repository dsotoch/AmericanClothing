import 'package:americanclothing/controlador/conexion.dart';
import 'package:americanclothing/modelo/login.dart';
import 'package:americanclothing/modelo/usuario.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
class ControladorUsuarios extends ChangeNotifier{

  Future<bool?>  UsuarioCorrecto(String user,String pass) async {

    try{
    Conexion conexion = Conexion();
    http.Response con = await conexion.conectarse();
    Loguearse? login= null;
      if(con.statusCode==200){
        var jsonResponse = convert.jsonDecode(con.body) as List<dynamic>;
        login =Loguearse.fromUserAndPass(user,pass);
        bool? usuario_correcto= login?.IniciarSesion(login);
        Usuario usuario= Usuario("","","",login!);
        notifyListeners();
      return usuario_correcto;
      }else{
        print('Error en la solicitud: ${con.statusCode}');
        return null;
      }
  
    }catch(e){
      print('Error en la solicitud: ${e}');
      return null;
    }

    }




}