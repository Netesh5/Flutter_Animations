// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class SolarSystemAnimation extends StatefulWidget {
  const SolarSystemAnimation({super.key});

  @override
  State<SolarSystemAnimation> createState() => _SolarSystemAnimationState();
}

class _SolarSystemAnimationState extends State<SolarSystemAnimation> {
  double sunAngle = 0.0;
  double sunRadius = 5.0;
  double mercuryAngle = 0.0;
  double mercuryRadius = 100.0;
  double venusAngle = 0.0;
  double venusRadius = 150.0;
  double earthAngle = 0.0;
  double earthRadius = 200.0;
  double marsAngle = 0.0;
  double marsRadius = 250.0;
  double jupiterAngle = 0.0;
  double jupiterRadius = 300.0;
  double saturnAngle = 0.0;
  double saturnRadius = 350.0;
  double uranusAngle = 0.0;
  double uranusRadius = 400.0;
  double neptuneAngle = 0.0;
  double neptuneRadius = 450.0;
  // late AnimationController controller;
  @override
  void initState() {
    // controller =
    //     AnimationController(vsync: this, duration: const Duration(seconds: 1))
    //       ..repeat();

    Timer.periodic(const Duration(milliseconds: 50), (Timer timer) {
      setState(() {
        sunAngle += 0.002;
        mercuryAngle += 0.3;
        venusAngle += 0.08;
        earthAngle += 0.05;
        marsAngle += 0.04;
        jupiterAngle += 0.02;
        saturnAngle += 0.01;
        uranusAngle += 0.008;
        neptuneAngle += 0.005;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/sky.jpeg"),
                fit: BoxFit.fitWidth)),
        child: Center(
          child: Stack(
            children: [
              //Mercury

              CustomPaint(
                size: const Size(100, 100),
                painter: CircularLinePainter(
                    radius: mercuryRadius, angle: mercuryAngle),
                child: Transform.translate(
                    offset: Offset(25 + mercuryRadius * cos(mercuryAngle),
                        25 + mercuryRadius * sin(mercuryAngle)),
                    child: Transform.rotate(
                      angle: mercuryAngle,
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/mercury.png"))),
                      ),
                    )),
              ),

              //venus
              Positioned(
                child: CustomPaint(
                  size: const Size(150, 150),
                  painter: CircularLinePainter(
                      radius: venusRadius, angle: venusAngle),
                  child: Transform.translate(
                      offset: Offset(25 + venusRadius * cos(venusAngle),
                          25 + venusRadius * sin(venusAngle)),
                      child: Transform.rotate(
                        angle: venusAngle,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/venus.png"))),
                        ),
                      )),
                ),
              ),

              //Earth
              Positioned(
                child: CustomPaint(
                  size: const Size(200, 200),
                  painter: CircularLinePainter(
                      radius: earthRadius, angle: earthAngle),
                  child: Transform.translate(
                      offset: Offset(25 + earthRadius * cos(earthAngle),
                          25 + earthRadius * sin(earthAngle)),
                      child: Transform.rotate(
                        angle: earthAngle,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/earth.png"))),
                        ),
                      )),
                ),
              ),

              //Mars
              Positioned(
                child: CustomPaint(
                  size: const Size(250, 250),
                  painter:
                      CircularLinePainter(radius: marsRadius, angle: marsAngle),
                  child: Transform.translate(
                      offset: Offset(25 + marsRadius * cos(marsAngle),
                          25 + marsRadius * sin(marsAngle)),
                      child: Transform.rotate(
                        angle: marsAngle,
                        child: Container(
                          width: 45,
                          height: 45,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/mars.png"))),
                        ),
                      )),
                ),
              ),

              //Jupiter
              Positioned(
                child: CustomPaint(
                  size: const Size(300, 300),
                  painter: CircularLinePainter(
                      radius: jupiterRadius, angle: jupiterAngle),
                  child: Transform.translate(
                    offset: Offset(25 + jupiterRadius * cos(jupiterAngle),
                        25 + jupiterRadius * sin(jupiterAngle)),
                    child: Transform.rotate(
                      angle: jupiterAngle,
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/jupiter.png"))),
                      ),
                    ),
                  ),
                ),
              ),

              //Saturn
              Positioned(
                child: CustomPaint(
                  size: const Size(350, 350),
                  painter: CircularLinePainter(
                      radius: saturnRadius, angle: saturnAngle),
                  child: Transform.translate(
                      offset: Offset(25 + saturnRadius * cos(saturnAngle),
                          25 + saturnRadius * sin(saturnAngle)),
                      child: Transform.rotate(
                        angle: saturnAngle,
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/saturn.png"))),
                        ),
                      )),
                ),
              ),

              //uranus
              Positioned(
                child: CustomPaint(
                  size: const Size(400, 400),
                  painter: CircularLinePainter(
                      radius: uranusRadius, angle: uranusAngle),
                  child: Transform.translate(
                      offset: Offset(25 + uranusRadius * cos(uranusAngle),
                          25 + uranusRadius * sin(uranusAngle)),
                      child: Transform.rotate(
                        angle: uranusAngle,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/uranus.png"))),
                        ),
                      )),
                ),
              ),

              //Neptune
              Positioned(
                child: CustomPaint(
                  size: const Size(450, 450),
                  painter: CircularLinePainter(
                      radius: neptuneRadius, angle: neptuneAngle),
                  child: Transform.translate(
                      offset: Offset(25 + neptuneRadius * cos(neptuneAngle),
                          25 + neptuneRadius * sin(neptuneAngle)),
                      child: Transform.rotate(
                        angle: neptuneAngle,
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/neptune.png"))),
                        ),
                      )),
                ),
              ),

              //Sun
              Transform.translate(
                offset: Offset(
                    sunRadius * cos(sunAngle), sunRadius * sin(sunAngle)),
                child: Transform.rotate(
                  angle: sunAngle,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                      "assets/images/sun.png",
                    ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class CircularLinePainter extends CustomPainter {
  double radius;
  double angle;
  CircularLinePainter({
    required this.radius,
    required this.angle,
  });
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width, size.height);
    final endPoint = Offset(
      50 + radius * cos(angle),
      50 + radius * sin(angle),
    );

    final paint = Paint()
      ..strokeWidth = 1.0
      ..color = Colors.white
      ..style = PaintingStyle.stroke;

    canvas.drawLine(center, endPoint, paint);
  }

  @override
  bool shouldRepaint(CircularLinePainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CircularLinePainter oldDelegate) => false;
}
