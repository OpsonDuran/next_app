import 'package:flutter/material.dart';
import 'carouselDetail/page.dart';
import 'package:page_indicator/page_indicator.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageIndicatorContainer(
          pageView: PageView(
            children: <Widget>[
              SafeArea(
                  child: Page("assets/nave.png", "Excelencia y Calidad",
                      "Buscamos fomentar la calidad de las arquitecturas y\n las implementaciones en nuestros proyectos \n asegurando la aplicación de las buenas prácticas.")),
              SafeArea(
                  child: Page("assets/inovacion.png", "Innovación",
                      "De la mano del radar de tecnologías, pretendemos\n trabajar utilizando las últimas tecnologías y aplicarlas \n utilizando las técnicas más modernas de desarrollo.")),
              SafeArea(
                  child: PageTree("assets/pasion.png", "Pasión",
                      "Queremos gente apasionada que busque la\n excelencia en el desarrollo y quiera formar parte del \n proceso de polinización tecnológica dentro de Next")),
            ],
            controller: controller,
          ),
          align: IndicatorAlign.bottom,indicatorSelectorColor: Colors.blueGrey,
          length: 3,
          indicatorSpace: 10.0,
        ),
      ),
    );
  }
}
