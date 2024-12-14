import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/aulavirtual.dart';
import 'package:ipail_2/phone/portadaphone.dart';
import 'package:ipail_2/proximasactividades.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu.dart';

class Portada extends StatelessWidget {
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth <= 600) {
      // Navegar al modo teléfono
      return PortadaPhone(); // Llama al diseño para pantallas pequeñas
    }

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
                fontSize: 25,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(width: 150),
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
              ),
              child: Text(
                "Aula virtual",
                style: TextStyle(fontSize: 20),
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
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.instagram.com/p.altagraciaiglesiasdelora/');
            },
            icon: FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.youtube.com/');
            },
            icon: FaIcon(FontAwesomeIcons.youtube),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),
      drawer: Menu(), // Usamos el menú en todas las páginas
      body: Stack(
        children: [
          // Contenido base (carrusel)
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
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
                  aspectRatio: 16 / 9,
                  viewportFraction: 1.0,
                  enlargeFactor: 0.3,
                  enableInfiniteScroll: true,
                ),
              ),
            ),
          ),
          // Capa degradada más suave encima del carrusel
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.3), // Opacidad reducida para suavizar el efecto
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
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 3),
                        blurRadius: 10,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProximasActividades()), // Navegar a la nueva página
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                ),
                child: Text(
                  "Próximas Actividades",
                  style: TextStyle(
                    fontSize: 20,
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
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    );
  }
}
