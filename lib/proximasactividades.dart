import 'package:flutter/material.dart';

class ProximasActividades extends StatelessWidget {
  final List<Map<String, String>> actividades = [
    {"fecha": "2024-12-03", "actividad": "Día Internacional de las Personas con Discapacidad"},
    {"fecha": "2024-12-05", "actividad": "Día Mundia del Suelo"},
    {"fecha": "2024-12-09", "actividad": "Día Mundial de la Informática"},
    {"fecha": "2024-12-22", "actividad": "Día Internacional de los Derechos Humanos"},
    {"fecha": "2024-12-20", "actividad": "Cierre del Año Escolar"},
    {"fecha": "2024-12-25", "actividad": "Día de la Navidad"},
  ];

   ProximasActividades({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Próximas Actividades",
        style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.blue,
        iconTheme: const IconThemeData(),
      ),
      body: ListView.builder(
        itemCount: actividades.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              leading: const Icon(Icons.event, color: Colors.blue),
              title: Text(
                actividades[index]["actividad"]!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Fecha: ${actividades[index]["fecha"]!}"),
            ),
          );
        },
      ),
    );
  }
}
