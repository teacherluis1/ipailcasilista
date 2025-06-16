import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/menu.dart';
import 'package:url_launcher/url_launcher.dart';


class AreasTecnicasPhone extends StatefulWidget {
  const AreasTecnicasPhone({super.key});

  @override
  _AreasTecnicasPhoneState createState() => _AreasTecnicasPhoneState();
}

class _AreasTecnicasPhoneState extends State<AreasTecnicasPhone> {
  String _seccionActual = "mision"; 

  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir la URL: $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.blue,
        title: const Text(
          'Títulos profesionales',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20, // Ajustamos un poco el tamaño para móvil
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _launchUrl('https://www.facebook.com/Institutopolitecnicoaltagraciaiglesias.delora');
            },
            icon: const Icon(Icons.facebook),
            color: Colors.white,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.instagram.com/p.altagraciaiglesiasdelora/');
            },
            icon: const FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
            iconSize: 25,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.youtube.com/');
            },
            icon: const FaIcon(FontAwesomeIcons.youtube),
            color: Colors.white,
            iconSize: 25,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 20),
              decoration: const BoxDecoration(color: Colors.blue),
              alignment: Alignment.center,
              child: const Text(
                "Títulos profesionales",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28, // tamaño más pequeño para móvil
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            // Botones de navegación en móvil (reducimos espaciados y tamaños)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildNavButton("Informática", "mision"),
                  _buildNavButton("Gestión", "vision"),
                  _buildNavButton("Salud", "valores"),
                ],
              ),
            ),

            const SizedBox(height: 20),
            _buildSeccionContenido(),
          ],
        ),
      ),
    );
  }

  Widget _buildNavButton(String titulo, String seccion) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            _seccionActual = seccion;
          });
        },
        child: Text(
          titulo,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: _seccionActual == seccion ? Colors.blue : Colors.grey,
            fontWeight: _seccionActual == seccion ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildSeccionContenido() {
    switch (_seccionActual) {
      case "mision":
        return _buildMision();
      case "vision":
        return _buildVision();
      case "valores":
        return _buildValores();
      default:
        return Container();
    }
  }

  Widget _buildMision() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "Desarrollo y Administración de Aplicaciones Informáticas",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              _buildImageCard("assets/informatica2.jpeg"),
              _buildImageCard("assets/informatica1.jpeg"),
              _buildImageCard("assets/informatica3.jpeg"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVision() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "Gestión Administrativa y Tributaria",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [

              _buildImageCard("assets/gestion1.jpeg"),
              _buildImageCard("assets/gestion2.jpeg"),
              _buildImageCard("assets/gestion3.jpeg"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildValores() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const Text(
            "Cuidados de Enfermería y Promoción de la Salud",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              _buildImageCard("assets/nursing1.jpeg"),
              _buildImageCard("assets/nursing2.jpeg"),
              _buildImageCard("assets/nursing3.jpeg"),



              
            ],
          ),
        ],
      ),
    );
  }


Widget _buildImageCard(String assetPath) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: Container(
      width: MediaQuery.of(context).size.width * 0.28, // Ajuste para móvil (3 imágenes en pantalla)
      height: MediaQuery.of(context).size.width * 0.28,
      color: Colors.grey[200],
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
      ),
    ),
  );
}
}