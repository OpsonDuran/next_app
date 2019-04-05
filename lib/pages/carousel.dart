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
                  child: Page("assets/flutter-framework.png", "Next generation",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
              SafeArea(
                  child: Page("assets/nave.png", "Next technologies",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
              SafeArea(
                  child: PageTree("assets/flu.png", "This is Flutter",
                      "Lorem Ipsum is simply dummy text\nof the printing and typesetting")),
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
