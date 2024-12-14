import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: Text('Portada'),
            onTap: () {
              Navigator.pushNamed(context, '/portada');
            },
          ),
          ListTile(
            title: Text('Institución'),
            onTap: () {
              Navigator.pushNamed(context, '/institucion');
            },
          ),
          ListTile(
            title: Text('Docentes'),
            onTap: () {
              Navigator.pushNamed(context, '/docentes');
            },
          ),
          ListTile(
            title: Text('Títulos Profesionales'),
            onTap: () {
              Navigator.pushNamed(context, '/areas_tecnicas');
            },
          ),
          ListTile(
            title: Text('Contactos'),
            onTap: () {
              Navigator.pushNamed(context, '/contactos');
            },
          ),
        ],
      ),
    );
  }
}
