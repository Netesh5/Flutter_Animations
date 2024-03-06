import 'package:flutter/material.dart';

class BreathingAnimation extends StatefulWidget {
  const BreathingAnimation({super.key});

  @override
  State<BreathingAnimation> createState() => _BreathingAnimationState();
}

class _BreathingAnimationState extends State<BreathingAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;
  double size = 0;
  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });

    controller.addListener(() {
      setState(() {
        size = controller.value;
      });
    });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double dimension = 100 - 50 * size;
    debugPrint("Value : $dimension");
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          width: dimension,
          height: dimension,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    blurRadius: dimension,
                    spreadRadius: dimension / 2)
              ]),
        ),
      )),
    );
  }
}
