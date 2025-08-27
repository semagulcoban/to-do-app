import 'package:deneme/page/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Uygulamanın ana widget'ı
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // sağ üstteki "debug" yazısını kapatır
      home: HomePage()
    );
  }
}

// 1. Sayfa
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            // arka plan resmi
            Opacity(
              opacity: 0.5, // burada saydamlığı ayarlıyorsun )
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/gif/back_image.png",
                    ), // resim yolunu assets klasöründen ver
                    fit: BoxFit.cover, // ekranı kaplasın
                  ),
                ),
              ),
            ),

            Positioned(
              top: 400,
              right: 50,
              left: 50,
              child: ElevatedButton(onPressed: () {
                // butuna tıklandığında yapılacak işlemler 
                print("butona basıldı");
                // sayfayı yönlendir 
                Navigator.push(context, MaterialPageRoute (builder: (context) =>const SecondPage() ));
              
              },
              
                style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 19, 70, 59), // hex kodu
              foregroundColor: Colors.white, // yazı rengi
                ),

              
               child: Text("Başla")),
            ),
          ],
        ),
      );
  }
}
