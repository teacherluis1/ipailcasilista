import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/aulavirtual.dart';
import 'package:ipail_2/menu.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ipail_2/proximasactividades.dart';

class PortadaPhone extends StatelessWidget {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Row(
          children: [
            Text(
              'Portada',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20, // Tamaño reducido para móviles
                fontWeight: FontWeight.normal,
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AulaVirtual()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              ),
              child: Text(
                "Aula virtual",
                style: TextStyle(fontSize: 16), // Tamaño reducido
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              _launchUrl('https://www.facebook.com/Institutopolitecnicoaltagraciaiglesias.delora');
            },
            icon: Icon(Icons.facebook),
            color: Colors.white,
            iconSize: 20, // Tamaño reducido para móviles
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.instagram.com/p.altagraciaiglesiasdelora/');
            },
            icon: FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
            iconSize: 20, // Tamaño reducido
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.youtube.com/');
            },
            icon: FaIcon(FontAwesomeIcons.youtube),
            color: Colors.white,
            iconSize: 20, // Tamaño reducido
          ),
        ],
      ),
      drawer: Menu(),
      body: Stack(
        children: [
          // Contenido base (carrusel)
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: CarouselSlider(
                items: [
                  _buildImage("assets/carusel0.jpeg"),
                  _buildImage("assets/carusel1.jpeg"),
                  _buildImage("assets/carusel2.jpeg"),
                  _buildImage("assets/carusel3.jpeg"),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 9 / 16, // Ajustar proporción para móviles
                  viewportFraction: 1.0,
                  enlargeFactor: 0.3,
                  enableInfiniteScroll: true,
                ),
              ),
            ),
          ),
          // Capa degradada encima del carrusel
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.2), // Degradado más suave
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Texto y botón centrados
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Instituto Politécnico Altagracia Iglesias de Lora",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22, // Texto más pequeño para móviles
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 3,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20), // Espacio reducido
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProximasActividades()), // Navegar a la página de actividades
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                ),
                child: Text(
                  "Próximas Actividades",
                  style: TextStyle(
                    fontSize: 16, // Texto reducido
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10), // Bordes más sutiles
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
