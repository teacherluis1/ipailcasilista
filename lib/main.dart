import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'areas_tecnicas.dart';
import 'contactos.dart';
import 'docentes.dart';
import 'institucion.dart';
import 'portada.dart';
import 'menu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseOptions(
    apiKey: "TU_API_KEY", 
    appId: "TU_APP_ID", 
    messagingSenderId: "TU_MESSAGING_SENDER_ID", 
    projectId: "TU_PROJECT_ID",
  ));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mi Página Web',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Portada(), 
        '/areas_tecnicas': (context) => AreasTecnicas(),
        '/contactos': (context) => Contactos(),
        '/docentes': (context) => Docentes(),
        '/institucion': (context) => Institucion(),
        '/portada': (context) => Portada(),
      },
    );
  }
}
