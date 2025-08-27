// 2. Sayfa
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GIF örneği')),
      body: SingleChildScrollView(// kaydırabilir yapıyıruz )
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
                 Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 10),
              ),
            
              child: Image.asset(
                'assets/gif/character.gif', // dosya yolun
                width: 100, // isteğe bağlı
                height: 100, // isteğe bağlı
                fit: BoxFit.cover, // isteğe bağlı
              ),
            ),
            SizedBox(height: 5,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red, width: 18),
              ),
            
              child: Image.asset(
                'assets/gif/character.gif', // dosya yolun
                width: 500, // isteğe bağlı
                height: 500, // isteğe bağlı
                fit: BoxFit.cover, // isteğe bağlı
              ),
            ),
          ],
        ),
      ),
    );
  }
}
