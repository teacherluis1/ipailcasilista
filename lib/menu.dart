import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú de Navegación',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            title: const Text('Portada'),
            onTap: () {
              Navigator.pushNamed(context, '/portada');
            },
          ),
          ListTile(
            title: const Text('Institución'),
            onTap: () {
              Navigator.pushNamed(context, '/institucion');
            },
          ),
          ListTile(
            title: const Text('Docentes'),
            onTap: () {
              Navigator.pushNamed(context, '/docentes');
            },
          ),
          ListTile(
            title: const Text('Títulos Profesionales'),
            onTap: () {
              Navigator.pushNamed(context, '/areas_tecnicas');
            },
          ),
          ListTile(
            title: const Text('Contactos'),
            onTap: () {
              Navigator.pushNamed(context, '/contactos');
            },
          ),
        ],
      ),
    );
  }
}
