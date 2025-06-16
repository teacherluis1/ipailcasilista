import 'package:flutter/material.dart';


class AulaVirtual extends StatelessWidget {
  
  const AulaVirtual({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    const Text("Bienvenido",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.white
                    ),
                    ),
                    const Text("Aula virtual del IPAIL",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87
                    ),),
                    const SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        maxLength: 10,
                      decoration: InputDecoration(
                        
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Ingresa tu usuario",
                        prefixIcon: const Icon(Icons.person),
                       
                      ),
                    ),
                    ),
                    const SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: TextFormField(
                        maxLength: 4,
                        obscureText: true,
                      decoration: InputDecoration(
                        
                        border: const OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                        hintText: "Ingresa tu contraseña",
                        prefixIcon: const Icon(Icons.security),
                       
                      ),
                    ),
                    ),

                    const SizedBox(height: 15,),


                    ElevatedButton(onPressed: (){},
                    child: const Text("Login",
                    style: TextStyle(
                      fontSize: 18
                    ),))




                  ],
                ),
              ),



          
            ],
          ),
        ),
      )
      
            
          
          
        
    
    );
  }
}