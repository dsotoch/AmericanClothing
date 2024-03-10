import 'package:flutter/material.dart';

class Vender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Publicar",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ),
        ],
        title: const Text("Crear Publicación"),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        children: [
          Divider(),
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/america.jpg"),
              )
            ],
          )
        ],
      ),
    );
  }
}
