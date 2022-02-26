import 'package:get/get.dart';

class CambioImagenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    cambioImg();
  }

  int indexUrlImg = 0;
  List<String> lista = [
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/elden-ring-1-1623668280.jpeg',
    'https://gcdn.lanetaneta.com/wp-content/uploads/2022/01/Como-Godfrey-de-Elden-Ring-paso-de-Elden-Lord-a.jpg',
    'https://www.lavanguardia.com/files/image_449_220/uploads/2022/02/23/621638bb4eff9.jpeg',
    'https://i0.wp.com/hipertextual.com/wp-content/uploads/2021/03/elden-ring-scaled.jpg?fit=1200%2C675&ssl=1',
    'https://gcdn.lanetaneta.com/wp-content/uploads/2021/12/Elden-Ring-el-Twitter-de-Bandai-Namco-esta-repleto-de.5.jpeg',
    'https://static1-es.millenium.gg/articles/2/45/59/2/@/240228-elden-ring-20220216135333-article_m-1.jpg',
    'https://static1-es.millenium.gg/articles/2/45/59/2/@/240226-elden-article_m-1.jpg'
  ];
  String urlImg = '';

  void cambioImg() {
    urlImg = lista.first;
    update();
  }

  void cambioImgRL(int valor) {
    if (valor == 1) {
      if (indexUrlImg == 7) {
        indexUrlImg = 0;
      } else {
        indexUrlImg++;
      }
      urlImg = lista[indexUrlImg];
    } else {
      if (indexUrlImg == 0) {
        indexUrlImg = 7;
      } else {
        indexUrlImg--;
      }
      urlImg = lista[indexUrlImg];
    }
    update();
  }
}
