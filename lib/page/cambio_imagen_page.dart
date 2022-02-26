import 'package:cartera_img/controller/cambio_imagen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CambioImagenPage extends StatelessWidget {
  const CambioImagenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elden Ring'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: GetBuilder<CambioImagenController>(builder: (_) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    _.cambioImgRL(0);
                  },
                  icon: const Icon(Icons.arrow_back)),
              CircleAvatar(
                radius: 250,
                backgroundImage: NetworkImage(_.urlImg),
              ),
              IconButton(
                  onPressed: () {
                    _.cambioImgRL(1);
                  },
                  icon: const Icon(Icons.arrow_forward))
            ],
          );
        }),
      ),
    );
  }
}
