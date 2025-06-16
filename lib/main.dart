import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'areas_tecnicas.dart';
import 'contactos.dart';
import 'docentes.dart';
import 'institucion.dart';
import 'portada.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(
    apiKey: "TU_API_KEY", 
    appId: "TU_APP_ID", 
    messagingSenderId: "TU_MESSAGING_SENDER_ID", 
    projectId: "TU_PROJECT_ID",
  ));

  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        '/': (context) => const Portada(), 
        '/areas_tecnicas': (context) => const AreasTecnicas(),
        '/contactos': (context) => const Contactos(),
        '/docentes': (context) => const Docentes(),
        '/institucion': (context) => const Institucion(),
        '/portada': (context) => const Portada(),
      },
    );
  }
}
