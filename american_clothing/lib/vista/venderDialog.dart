import 'package:americanclothing/vista/vender.dart';
import 'package:flutter/material.dart';

class VenderDialog {
  void mostrarDialogo(BuildContext context, double? tamanio) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.line_axis),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                "Crear Publicación",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: tamanio),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Icon(Icons.shop_two),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Vender(),
                              ));
                        },
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.2)),
                            ),
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black)),
                        child: const Text(
                          "Ropa Nueva",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Icon(Icons.shower_sharp),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextButton(
                        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Vender(),
                              ));},
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.2)))),
                        child: const Text(
                          "Ropa Semi Nueva",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    const Icon(Icons.local_offer_sharp),
                    const SizedBox(
                      width: 10.0,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: TextButton(
                        style: ButtonStyle(
                            alignment: Alignment.centerLeft,
                            foregroundColor:
                                const MaterialStatePropertyAll(Colors.black),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.2)))),
                        onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Vender(),
                              ));},
                        child: const Text(
                          "Remates",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        );
      },
    );
  }
}
