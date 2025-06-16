import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/phone/areastecnicasphone.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu.dart';

class AreasTecnicas extends StatefulWidget {
  const AreasTecnicas({super.key});

  @override
  _AreasTecnicasState createState() => _AreasTecnicasState();
}

class _AreasTecnicasState extends State<AreasTecnicas> {
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
      return AreasTecnicasPhone (); // Llama al diseño para pantallas pequeñas
    }



    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: const Text(
          'Títulos profesionales',
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
            icon: const Icon(Icons.facebook),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.instagram.com/p.altagraciaiglesiasdelora/');
            },
            icon: const FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {
              _launchUrl('https://www.youtube.com/');
            },
            icon: const FaIcon(FontAwesomeIcons.youtube),
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
              "Títulos profesionales",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40),








          // Botones de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavButton("Informática y Comunicaciones", "mision"),
              _buildNavButton("Administración y Comercio", "vision"),
              _buildNavButton("Salud", "valores"),
            ],
          ),
          const SizedBox(height: 40),
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
          const Text(
            "Desarrollo y Administración de Aplicaciones Informáticas",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/informatica2.jpeg",
                  fit: BoxFit.cover,),  

                    
                  
                                   
                                
                  
                ),
              ),
                        ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/informatica1.jpeg",
                  fit: BoxFit.cover,),
                  
                  
                ),
                
              ),
            
              

                ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/informatica3.jpeg",
                  fit: BoxFit.cover,),
                  
                  
                ),
              )
              
    
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
          const Text(
            
            "Gestión Administrativa y Tributaria",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centrar todos los elementos
            children: [
    

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/gestion1.jpeg",
                  fit: BoxFit.cover,),                
                  
                ),
              ),
                        ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/gestion2.jpeg",
                  fit: BoxFit.cover,),
                  
                  
                ),
                
              ),
            
              

                ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/gestion3.jpeg",
                  fit: BoxFit.cover,),
                  
                  
                ),
              )



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
          const Text(
            "Cuidados de Enfermería y Promoción de la Salud",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/nursing1.jpeg",
                  fit: BoxFit.cover,),                
                  
                ),
              ),
                        ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/nursing2.jpeg",
                  fit: BoxFit.cover,), 
                  
                  
                ),
                
              ),
            
              

                ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey[200],
                  child: Image.asset("assets/nursing3.jpeg",
                  fit: BoxFit.cover,), 
                  
                  
                ),
              )




             
             
            ],
          ),
        ],
      ),
    );
  }
}
