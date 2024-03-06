import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();

    // controller.addStatusListener((status) {
    //   if (status == AnimationStatus.completed) {
    //     controller.reverse();
    //   } else {
    //     controller.forward();
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 100),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) {
        return Container(
          width: value,
          height: value,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blueAccent,
              boxShadow: [
                BoxShadow(
                    color: Colors.blueAccent.withOpacity(0.5),
                    blurRadius: value,
                    spreadRadius: value / 2)
              ]),
        );
      },
    );
  }
}
