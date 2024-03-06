import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ShimmerAnimation extends StatefulWidget {
  const ShimmerAnimation({super.key});

  @override
  State<ShimmerAnimation> createState() => _ShimmerAnimationState();
}

class _ShimmerAnimationState extends State<ShimmerAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "Rara Labs \nMobile",
            style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
          )
              .animate(
            onPlay: (controller) => controller.repeat(reverse: true),
          )
              .shimmer(
                  colors: [Colors.orangeAccent, Colors.green, Colors.orange],
                  duration: const Duration(seconds: 3)),
        ),
      )),
    );
  }
}
