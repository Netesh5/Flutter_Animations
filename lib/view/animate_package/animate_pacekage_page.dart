import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AnimatePackagePage extends StatefulWidget {
  const AnimatePackagePage({super.key});

  @override
  State<AnimatePackagePage> createState() => _AnimatePackagePageState();
}

class _AnimatePackagePageState extends State<AnimatePackagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Animate(
                delay: 1000.ms,
                effects: const [
                  FadeEffect(),
                  ScaleEffect(duration: Duration(seconds: 1))
                ],
                child: const Text(
                  "Awesome",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const Text("Another animation").animate().flip().color(
                  begin: const Color.fromARGB(0, 65, 65, 196),
                  end: const Color.fromARGB(0, 5, 5, 15)),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
