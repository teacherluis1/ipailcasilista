import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/phone/docentesphone.dart';
import 'package:url_launcher/url_launcher.dart';
import 'menu.dart';

class Docentes extends StatefulWidget {
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
        iconTheme: IconThemeData(
          color: Colors.white,
        ),

        backgroundColor: Colors.blue,
        title: Text(
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
              "Docentes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 50),








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
            Text(
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
                    Text("Felicia Hernández",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Directora",
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
                    Text("Milagro Durán",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Sub-directora",
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
                    Text("Yajaira García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Coordinadora",
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
                    Text("Josefina García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Coordinadora",
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
                    Text("Yngrid González",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Psicóloga",
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
            Text(
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
                    Text("Reyna Vidal",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lengua Española",
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
                    Text("Jairo Cruz",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lengua Española",
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
                    Text("Delvinson Pérez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
                ),  
                SizedBox(height: 50,),
      
      
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
                    Text("Erny Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Matemática",
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
                    Text("Leidy García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias Sociales",
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
                    Text("Biorky Suero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias Sociales",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ), 
              SizedBox(height: 50,),
 
      
      
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
                    Text("Francisco Contreras",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias de la Naturaleza",
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
                    Text("Ana Daisy Rodríguez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias de la Naturaleza",
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
                    Text("Claribel Taveras",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                 SizedBox(height: 50,),               
      
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
                    Text("Estephani Payero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lenguas Extranjeras (Francés)",
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
                    Text("Edwin Castillo",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Educación Física",
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
                    Text("Eulogio Tineo",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Educación Artística",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                   SizedBox(height: 50,),   
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
                    Text("Aníbal Almonte",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Formación Integral, Humana y Religiosa",
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
                    Text("Marcos Reyes",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Matemática",
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
            Text(
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
                    Text("Digna Cabrera",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lengua Española",
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
                    Text("Sorany Gómez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lengua Española",
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
                    Text("Omar Ureña",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Matemática",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ),  
                SizedBox(height: 50,),
      
      
      
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
                    Text("José Manuel Alcántara",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Matemática",
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
                    Text("Francisca Gómez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias Sociales",
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
                    Text("César Hatchett",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Ciencias de la Naturaleza",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
                ),  
                SizedBox(height: 50,),
      
      
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
                    Text("Yokasta Puig",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lenguas Extranjeras (Inglés)",
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
                    Text("Estephani Payero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lenguas Extranjeras (Inglés)",
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
                    Text("Luis Hernández",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Lenguas Extranjeras (Inglés)",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],
      
                ), 
              SizedBox(height: 50,),
 
      
      
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
                    Text("Ana Hilda Cordero",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Informática y Comunicaciones",
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
                    Text("Gregorio Núñez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Informática y Comunicaciones",
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
                    Text("Ilkania Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Informática y Comunicaciones",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                SizedBox(height: 50,),
                
      
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
                    Text("Noroibi Muñoz",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Informática y Comunicaciones",
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
                    Text("Eunices Samboy",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Informática y Comunicaciones",
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
                    Text("Rosmery Ovalle",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                SizedBox(height: 50,),      
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
                    Text("Zunicaury García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
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
                    Text("Marta Serrata",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
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
                    Text("Nely Rosario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                 SizedBox(height: 50,),     
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
                    Text("Mauricio Bisonó",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
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
                    Text("Aracelis Cuevas",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Administración y Comercio",
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
                    Text("Carmen Rodríguez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                
                 SizedBox(height: 50,),     
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
                    Text("Nidia García",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Salud",
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
                    Text("Carlos Hilario",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Salud",
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
                    Text("Betty Vásquez",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Salud",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),               
                  ],
                ),
                 
                  ],     
                ),  
                





                 SizedBox(height: 50,),     
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
                    Text("Eridania Santos",
                    style: TextStyle(
                      fontSize: 18
      
                    ),),
                    Text("Salud",
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
                ),
                 
                  ],     
                ),  
                
      
      
      
      
               
              
            
          ],
        ),
      ),
    );
  }
}
