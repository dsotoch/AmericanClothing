import 'package:http/http.dart' as http;
class Conexion {

  Future<http.Response> conectarse() async {
    try {
      var url =
      Uri.https('jsonplaceholder.typicode.com','users');

      var response = await http.get(url);
       return response;
    } catch (e) {
      print('Error al conectar a la base de datos: $e');
      throw e;
    }
  }

  Conexion();
}
