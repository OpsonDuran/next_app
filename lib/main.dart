import 'package:flutter/material.dart';
import 'pages/splash.dart';
import 'pages/carousel.dart';
import 'pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Splash(),
        '/second': (context) => Carousel(),
        '/tree': (context) => HomePage(),
      },
    );
  }
}
