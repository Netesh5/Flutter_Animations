import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatedListDemo extends StatelessWidget {
  const AnimatedListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
                children: AnimateList(
      interval: 50.ms,
      effects: const [ScaleEffect()],
      children: List.generate(10, (index) {
        return const ListTile(
          title: Text("Animated List"),
        );
      }),
    ))));
  }
}
