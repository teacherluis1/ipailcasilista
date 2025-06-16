import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class InstitucionPhone extends StatefulWidget {
  const InstitucionPhone({super.key});

  @override
  _InstitucionPhoneState createState() => _InstitucionPhoneState();
}

class _InstitucionPhoneState extends State<InstitucionPhone> {
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
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: const Text(
          'Institución',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.blue,
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
      drawer: Menu(),
      body: Column(
        children: [
          // Encabezado
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.blue),
            padding: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: const Text(
              "¿Quiénes somos?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30, // tamaño más pequeño para móvil
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          const SizedBox(height: 10),

          // Botones de navegación
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavButton("Misión", "mision"),
                _buildNavButton("Visión", "vision"),
                _buildNavButton("Valores", "valores"),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Contenido dinámico
          Expanded(
            child: SingleChildScrollView(
              child: _buildSeccionContenido(),
            ),
          ),
        ],
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
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nuestra misión",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Ser una institución técnica profesional que responda a las "
            "necesidades con equidad, eficiencia y eficacia de los jóvenes "
            "de la comunidad educativa, incorporando a la sociedad un individuo "
            "capaz de desarrollarse en la sociedad, vida social, cultural y económica.",
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildVision() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nuestra visión",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Text(
            "Formar jóvenes calificados en el campo científico, tecnológico, "
            "actitudinal y social para que se inserten en el mercado laboral "
            "de forma productiva en la sociedad global, de acuerdo con los nuevos tiempos.",
            style: TextStyle(fontSize: 14, color: Colors.black87),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildValores() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nuestros valores",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("• Amor a Dios", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Civismo", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Responsabilidad", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Democracia", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Puntualidad", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Solidaridad", style: TextStyle(fontSize: 14, color: Colors.black87)),
              Text("• Honestidad", style: TextStyle(fontSize: 14, color: Colors.black87)),
            ],
          ),
        ],
      ),
    );
  }
}
