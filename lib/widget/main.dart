import 'package:cartera_img/controller/cambio_imagen_controller.dart';
import 'package:cartera_img/page/cambio_imagen_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.lazyPut(() => CambioImagenController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'cartera de Imagenes',
        initialRoute: '/cambio',
        routes: {'/cambio': (context) => const CambioImagenPage()});
  }
}
