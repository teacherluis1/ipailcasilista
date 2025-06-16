import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/phone/docentesphone.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu.dart';

class Docentes extends StatefulWidget {
  const Docentes({super.key});

  @override
  _DocentesState createState() => _DocentesState();
}

class _DocentesState extends State<Docentes> {
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
      return DocentesPhone (); // Llama al diseño para pantallas pequeñas
    }

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
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),       actions: [
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
              "Docentes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 50),








          // Botones de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavButton("Equipo de Gestión", "mision"),
              _buildNavButton("Primer Ciclo", "vision"),
              _buildNavButton("Segundo Ciclo", "valores"),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Equipo de Gestión",
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
      
                
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                          child: Image.asset("assets/logo.png",
                          fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Felicia Hernández",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Directora",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                          child: Image.asset("assets/logo.png",
                          fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Milagro Durán",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Sub-directora",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                          child: Image.asset("assets/logo.png",
                          fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Yajaira García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Coordinadora",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                
      
              ],
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                          child: Image.asset("assets/logo.png",
                          fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Josefina García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Coordinadora",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                          child: Image.asset("assets/logo.png",
                          fit: BoxFit.cover,),               
                        
                      ),
                    ),
                    const Text("Yngrid González",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Psicóloga",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
              ],
            ),
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
          ],
        ),
      ),
    );
  }

  // Contenido de "Visión"
  /////////////////////////////primer ciclo////////////////////////////////////////////////
  Widget _buildVision() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Docentes del Primer Ciclo",
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
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Reyna Vidal",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lengua Española",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Jairo Cruz",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lengua Española",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Delvinson Pérez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
                ),  
                const SizedBox(height: 50,),
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Erny Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Leidy García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias Sociales",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Biorky Suero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias Sociales",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ), 
              const SizedBox(height: 50,),
 
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Francisco Contreras",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias de la Naturaleza",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Ana Daisy Rodríguez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias de la Naturaleza",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Claribel Taveras",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                 const SizedBox(height: 50,),               
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Estephani Payero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lenguas Extranjeras (Francés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Edwin Castillo",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Educación Física",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Eulogio Tineo",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Educación Artística",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                   const SizedBox(height: 50,),   
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Aníbal Almonte",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Formación Integral, Humana y Religiosa",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Marcos Reyes",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
                /*
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    Text("",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),*/
                 
                  ],     
                ),
          ],
        ),
      ),
    
        );

                
  }


/////////////////////// segundo cilo////////////////////////////////


  // Contenido de "Valores"
  Widget _buildValores() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Docentes del Segundo Ciclo",
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
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Digna Cabrera",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lengua Española",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Sorany Gómez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lengua Española",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Omar Ureña",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ),  
                const SizedBox(height: 50,),
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),               
                        
                      ),
                    ),
                    const Text("José Manuel Alcántara",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Francisca Gómez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias Sociales",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("César Hatchett",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Ciencias de la Naturaleza",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
                ),  
                const SizedBox(height: 50,),
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),              
                        
                      ),
                    ),
                    const Text("Yokasta Puig",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Estephani Payero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Luis Hernández",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ), 
              const SizedBox(height: 50,),
 
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),               
                        
                      ),
                    ),
                    const Text("Ana Hilda Cordero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Gregorio Núñez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Ilkania Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                const SizedBox(height: 50,),
                
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Noroibi Muñoz",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Eunices Samboy",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Rosmery Ovalle",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                const SizedBox(height: 50,),      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Zunicaury García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Marta Serrata",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Nely Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                 const SizedBox(height: 50,),     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Mauricio Bisonó",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Aracelis Cuevas",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Carmen Rodríguez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                 const SizedBox(height: 50,),     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Nidia García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Carlos Hilario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("Betty Vásquez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                





                 const SizedBox(height: 50,),     
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                
                        
                      ),
                    ),
                    const Text("Eridania Santos",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
      
      
                Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: Colors.grey[200],
                        child: Image.asset("assets/logo.png",
                        fit: BoxFit.cover,),                 
                        
                      ),
                    ),
                    const Text("",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    const Text("",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
      
      
      
      
               
              
            
          ],
        ),
      ),
    );
  }
}
