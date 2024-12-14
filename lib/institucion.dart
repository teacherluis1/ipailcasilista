import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/phone/institucionphone.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu.dart';

class Institucion extends StatefulWidget {
  @override
  _InstitucionState createState() => _InstitucionState();
}

class _InstitucionState extends State<Institucion> {
  String _seccionActual = "mision"; // Estado para controlar la sección visible
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
      return InstitucionPhone (); // Llama al diseño para pantallas pequeñas
    }


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        title: Text(
          'Institución',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
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
      drawer: Menu(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: const BoxDecoration(color: Colors.blue),
            alignment: Alignment.center,
            child: const Text(
              "¿Quiénes somos?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      
          SizedBox(height: 20),
      
      
      
      
      
      
      
      
          // Botones de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavButton("Misión", "mision"),
              _buildNavButton("Visión", "vision"),
              _buildNavButton("Valores", "valores"),
            ],
          ),
          const SizedBox(height: 20),
          // Contenido dinámico
          Expanded(
            child: _buildSeccionContenido(),
          ),
        ],
      ),
    );
  }

  // Widget para construir cada botón de navegación
  Widget _buildNavButton(String titulo, String seccion) {
    return TextButton(
      onPressed: () {
        setState(() {
          _seccionActual = seccion; // Cambiar la sección actual
        });
      },
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: _seccionActual == seccion ? Colors.blue : Colors.grey,
          fontWeight:
              _seccionActual == seccion ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }


  // Widget para mostrar el contenido según la sección actual
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

  // Contenido de "Misión"
  Widget _buildMision() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nuestra misión",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
    Text(
      "Ser una institución técnica profesional que responda",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      
    ),
    Text(
      "a las necesidades con equidad, eficiencia y eficacia",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      
    ),
    Text(
      "de los jóvenes de la comunidad educativa incorporando",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      
    ),
    Text(
      "a la sociedad un individuo capaz de desarrollarse en la ",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.center,
    ),

    Text(
      "sociedad, vida social, cultural y económica. ",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      
    ),
            ],
          ),
        ],
      ),
    );
  }

  // Contenido de "Visión"
  Widget _buildVision() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            
            "Nuestra visión",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),


          Column(
  crossAxisAlignment: CrossAxisAlignment.start, // Centrar todos los elementos
  children: [
    Text(
      "Formar jóvenes calificados en el campo científico,",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.center,
    ),
    Text(
      "tecnológico, actitudinal y social para que se inserte",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.center,
    ),
    Text(
      "en el mercado laboral de forma productiva en la",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.center,
    ),
    Text(
      "sociedad global de acuerdo con los nuevos tiempos.",
      style: TextStyle(fontSize: 16, color: Colors.black87),
      textAlign: TextAlign.center,
    ),
  ],
),









        ],
      ),
    );
  }

  // Contenido de "Valores"
  Widget _buildValores() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Nuestros valores",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Amor a Dios",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),

              Text(
                "Civismo",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              
              Text(
                "Responsabilidad",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              
              Text(
                "Democracia",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              
              Text(
                "Puntualidad",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),

              Text(
                "Solidaridad",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
              
              Text(
                "Honestidad",
                style: TextStyle(fontSize: 16, color: Colors.black87),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
