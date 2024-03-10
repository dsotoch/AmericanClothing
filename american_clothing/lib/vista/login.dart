import 'package:americanclothing/controlador/controlador_usuarios.dart';
import 'package:americanclothing/modelo/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tamanio = MediaQuery.of(context).size;
    final provedor_controlador_usuarios=Provider.of<ControladorUsuarios>(context);
    final provedor_modelo_login=Provider.of<Loguearse>(context);
    Widget? _showLoadingModal() {
       showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return Column(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: RadialGradient(colors: [Colors.blueAccent, Colors.black.withOpacity(0.6)])
                  ),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      SizedBox(height: 16.0),
                      Text('Validando Datos...'),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    Future<bool?> _IniciarSesion(String user,String pass) async {
       return await provedor_controlador_usuarios.UsuarioCorrecto(user, pass);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightBlue.withOpacity(0.3),
                        blurRadius: 5.0,
                        spreadRadius: 80,
                      ),
                    ],
                  ),
                  child: Image.asset(
                    'images/america.jpg',
                    fit: BoxFit.cover,
                    width: tamanio.width,
                    height: tamanio.height / 2,
                  ),
                ),
                Form(
                  child: Container(
                    color: Colors.white,
                    width: tamanio.width / 1.3,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.supervised_user_circle,
                                color: Colors.blueAccent,
                              ),
                              labelText: "Usuario",
                              labelStyle: TextStyle(color: Colors.blueAccent),
                            ),
                            onChanged: (value) => provedor_modelo_login.user=value,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.password,
                                color: Colors.blueAccent,
                              ),
                              labelText: "Contraseña",
                              labelStyle: TextStyle(color: Colors.blueAccent),
                            ),
                            onChanged: (value) => provedor_modelo_login.pass=value,
                          ),
                        ),
                        SizedBox(
                          width: tamanio.width,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                            child: ElevatedButton(
                              onPressed: () {
                                if (provedor_modelo_login.user.isEmpty) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text("Ingresa tu nombre de usuario"),
                                      );
                                    },
                                  );
                                } else if (provedor_modelo_login.pass.isEmpty) {
                                  showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        content: Text("Ingresa tu contraseña"),
                                      );
                                    },
                                  );
                                } else {
                                    FutureBuilder<bool?>(
                                      future: _IniciarSesion(
                                        provedor_modelo_login.user,
                                        provedor_modelo_login.pass,
                                      ),
                                      builder: (context, snapshot) {
                                        if (snapshot.connectionState == ConnectionState.waiting) {
                                          return  CircularProgressIndicator();
                                        } else {
                                          if (snapshot.hasError) {
                                            return CircularProgressIndicator();
                                          } else {
                                            if(snapshot.hasData==true){
                                              return Text("correctamente logueado");

                                            }else{
                                              print("error");
                                              return Text("correctamente logueado");

                                            }
                                          }
                                        }
                                      },
                                    );

                                }
                              },

                              style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.blueAccent),
                                foregroundColor:
                                    MaterialStatePropertyAll(Colors.white),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.horizontal(
                                      left: Radius.circular(10),
                                      right: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              child: const Text(
                                "Iniciar Sesion",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          child: const Text(
                            "Olvidaste tu Contraseña?",
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                tamanio.height > 700
                    ? const SizedBox(height: 30)
                    : const SizedBox(height: 3),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(10),
                            right: Radius.circular(10),
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.lightBlueAccent),
                      padding: MaterialStatePropertyAll(
                        EdgeInsets.fromLTRB(40, 0, 40, 0),
                      ),
                    ),
                    child: const Text(
                      "Crear Cuenta",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
