import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/menu.dart';
import 'package:url_launcher/url_launcher.dart';

class DocentesPhone extends StatefulWidget {
  const DocentesPhone({super.key});

  @override
  _DocentesPhoneState createState() => _DocentesPhoneState();
}

class _DocentesPhoneState extends State<DocentesPhone> {
  String _seccionActual = "mision"; // Estado para controlar la sección visible

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
        backgroundColor: Colors.blue,
        title: const Text(
          'Docentes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20, // Ajuste de tamaño para móvil
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
      drawer: Menu(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 20),
            decoration: const BoxDecoration(color: Colors.blue),
            alignment: Alignment.center,
            child: const Text(
              "Docentes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30, // más pequeño para móvil
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          // Botones de navegación en móvil (reducimos tamaños)
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildNavButton("Equipo de Gestión", "mision"),
                _buildNavButton("Primer Ciclo", "vision"),
                _buildNavButton("Segundo Ciclo", "valores"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: _buildSeccionContenido(),
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
            _seccionActual = seccion; // Cambiar la sección actual
          });
        },
        child: Text(
          titulo,
          style: TextStyle(
            fontSize: 16,
            color: _seccionActual == seccion ? Colors.blue : Colors.grey,
            fontWeight:
                _seccionActual == seccion ? FontWeight.bold : FontWeight.normal,
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

  // Helper para crear las tarjetas
  Widget _buildDocentCard(String nombre, String asignatura, {String image = "assets/logo.png"}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(80),
          child: Container(
            width: 100,
            height: 100,
            color: Colors.grey[200],
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          nombre,
          style: const TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          asignatura,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildMision() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Equipo de Gestión",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Wrap(
            spacing: 30,
            runSpacing: 30,
            alignment: WrapAlignment.center,
            children: [
              _buildDocentCard("Felicia Hernández", "Directora"),
              _buildDocentCard("Milagro Durán", "Sub-directora"),
              _buildDocentCard("Yajaira García", "Coordinadora"),
              _buildDocentCard("Josefina García", "Coordinadora"),
              _buildDocentCard("Yngrid González", "Psicóloga"),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVision() {
    // Lista de docentes del Primer Ciclo
    final firstCycleTeachers = [
      _buildDocentCard("Reyna Vidal", "Lengua Española"),
      _buildDocentCard("Jairo Cruz", "Lengua Española"),
      _buildDocentCard("Delvinson Pérez", "Matemática"),
      _buildDocentCard("Erny Rosario", "Matemática"),
      _buildDocentCard("Leidy García", "Ciencias Sociales"),
      _buildDocentCard("Biorky Suero", "Ciencias Sociales"),
      _buildDocentCard("Francisco Contreras", "Ciencias Naturales"),
      _buildDocentCard("Ana Daisy Rodríguez", "Ciencias Naturales"),
      _buildDocentCard("Claribel Taveras", "Inglés"),
      _buildDocentCard("Estephani Payero", "Francés"),
      _buildDocentCard("Edwin Castillo", "Educación Física"),
      _buildDocentCard("Eulogio Tineo", "Educación Artística"),
      _buildDocentCard("Aníbal Almonte", "Form. Integral, Humana y Religiosa"),
      _buildDocentCard("Marcos Reyes", "Matemática"),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Docentes del Primer Ciclo",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 0.8, // Ajustar si se requiere mayor o menor altura
            children: firstCycleTeachers,
          ),
        ],
      ),
    );
  }

  Widget _buildValores() {
    // Lista de docentes del Segundo Ciclo
    final secondCycleTeachers = [
      _buildDocentCard("Digna Cabrera", "Lengua Española"),
      _buildDocentCard("Sorany Gómez", "Lengua Española"),
      _buildDocentCard("Omar Ureña", "Matemática"),
      _buildDocentCard("José Manuel Alcántara", "Matemática"),
      _buildDocentCard("Francisca Gómez", "Ciencias Sociales"),
      _buildDocentCard("César Hatchett", "Ciencias Naturales"),
      _buildDocentCard("Yokasta Puig", "Inglés"),
      _buildDocentCard("Estephani Payero", "Inglés"),
      _buildDocentCard("Luis Hernández", "Inglés"),
      _buildDocentCard("Ana Hilda Cordero", "Informática y Comunicaciones"),
      _buildDocentCard("Gregorio Núñez", "Informática y Comunicaciones"),
      _buildDocentCard("Ilkania Rosario", "Informática y Comunicaciones"),
      _buildDocentCard("Noroibi Muñoz", "Informática y Comunicaciones"),
      _buildDocentCard("Eunices Samboy", "Informática y Comunicaciones"),
      _buildDocentCard("Rosmery Ovalle", "Administración y Comercio"),
      _buildDocentCard("Zunicaury García", "Administración y Comercio"),
      _buildDocentCard("Marta Serrata", "Administración y Comercio"),
      _buildDocentCard("Nely Rosario", "Administración y Comercio"),
      _buildDocentCard("Mauricio Bisonó", "Administración y Comercio"),
      _buildDocentCard("Aracelis Cuevas", "Administración y Comercio"),
      _buildDocentCard("Carmen Rodríguez", "Salud"),
      _buildDocentCard("Nidia García", "Salud"),
      _buildDocentCard("Carlos Hilario", "Salud"),
      _buildDocentCard("Betty Vásquez", "Salud"),
      _buildDocentCard("Eridania Santos", "Salud"),
    ];

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          const Text(
            "Docentes del Segundo Ciclo",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            childAspectRatio: 0.8, 
            children: secondCycleTeachers,
          ),
        ],
      ),
    );
  }
}
