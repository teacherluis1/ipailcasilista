import 'package:flutter/material.dart';


class Page404 extends StatelessWidget {
  
  const Page404({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              
              
          
              SizedBox(
                
                width: 400, 
                height: 400,
                child: Image.network("https://emojiisland.com/cdn/shop/products/Sad_Face_Emoji_large.png?v=1571606037")),
          
              Container(
                child: const Text("404",
                style: TextStyle(
                  fontSize: 100,
                ),
                ),
          
              ),
              Container(
                child: const Text("Página en proceso",
                style: TextStyle(
                  fontSize: 50,
                ),
                ),
          
              ),
          
          
            ],
          
          ),
        ),
      ),
    );
  }
}