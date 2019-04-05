import 'package:flutter/material.dart';
import 'dart:async';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 2200), () => Navigator.pushNamed(context, '/second'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.blue,
                ],
                begin: const FractionalOffset(0.5, 0.0),
                end: const FractionalOffset(0.0, 0.5),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp)),
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Next",
                      style: TextStyle(
                          fontSize: 121,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Technologies",
                      style: TextStyle(
                          fontSize: 28,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
            Expanded(
              flex: 1,
              child: Container(
                height: 220,
                width: MediaQuery.of(context).size.width,
                child: WaveWidget(
                  config: CustomConfig(
                    gradients: [
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Colors.white.withOpacity(0.1)
                      ],
                      [
                        Colors.white.withOpacity(0.8),
                        Color(0xFFFFFFFF).withOpacity(0.2)
                      ]
                    ],
                    durations: [5000, 4440, 5400, 6000],
                    heightPercentages: [0.10, 0.15, 0.20, 0.25],
                    blur: MaskFilter.blur(BlurStyle.solid, 0),
                  ),
                  backgroundColor: Colors.transparent,
                  size: Size(double.infinity, double.infinity),
                  waveAmplitude: 0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
