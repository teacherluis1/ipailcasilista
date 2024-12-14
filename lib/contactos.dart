import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ipail_2/menu.dart';
import 'package:ipail_2/phone/contactosphone.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Importar Firestore

class Contactos extends StatefulWidget {
  @override
  _ContactosState createState() => _ContactosState();
}

class _ContactosState extends State<Contactos> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

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
      return ContactosPhone(); // Llama al diseño para pantallas pequeñas
    }

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        title: Text(
          'Contactos',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
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
              "Contáctanos",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                // Parte izquierda: Información de contacto
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(top: 50, left: 50),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Contacto",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 45,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "We would love to speak with you.",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                "Feel free to reach out using the below details.",
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 60),
                              const Text(
                                "Politécnico Altagracia Iglesias de Lora",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.call,
                                      color: Colors.blue, size: 20.0),
                                  SizedBox(width: 10),
                                  Text(
                                    "(809)582-3908",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: const [
                                  Icon(Icons.email,
                                      color: Colors.blue, size: 20.0),
                                  SizedBox(width: 10),
                                  Text(
                                    "iglesiasdelora@altagraciaiglesias.net",
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Parte derecha: Formulario
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration:
                          BoxDecoration(color: Colors.grey[100]),
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Formulario de Contacto",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Expanded(
                                    child: TextFormField(
                                      controller: _nameController,
                                      decoration: const InputDecoration(
                                        labelText: "Nombre",
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Por favor ingrese su nombre';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: TextFormField(
                                      controller: _emailController,
                                      decoration: const InputDecoration(
                                        labelText: "Correo Electrónico",
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Por favor ingrese su correo electrónico';
                                        }
                                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                                          return 'Ingrese un correo electrónico válido';
                                        }
                                        return null;
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: _phoneController,
                                decoration: const InputDecoration(
                                  labelText: "Número de Teléfono",
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Por favor ingrese su número de teléfono';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 20),
                              TextFormField(
                                controller: _messageController,
                                maxLines: 4,
                                decoration: const InputDecoration(
                                  labelText: "Mensaje",
                                  border: OutlineInputBorder(),
                                ),
                              ),
                              const SizedBox(height: 20),
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:  Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      final String name = _nameController.text;
                                      final String email = _emailController.text;
                                      final String phone = _phoneController.text;
                                      final String message = _messageController.text;
                                      
                                      FirebaseFirestore.instance.collection('contactMessages').add({
                                        'name': name,
                                        'email': email,
                                        'phone': phone,
                                        'message': message,
                                        'timestamp': FieldValue.serverTimestamp(),
                                      }).then((value) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(
                                            content: Text('Mensaje enviado correctamente.'),
                                            backgroundColor: Colors.green,
                                          ),
                                        );
                                        _nameController.clear();
                                        _emailController.clear();
                                        _phoneController.clear();
                                        _messageController.clear();
                                      }).catchError((error) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(
                                            content: Text('Ocurrió un error: $error'),
                                            backgroundColor: Colors.red,
                                          ),
                                        );
                                      });
                                    }
                                  },
                                  child: const Text(
                                    "Enviar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
