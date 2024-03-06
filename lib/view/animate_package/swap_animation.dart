import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class SwapAnimation extends StatelessWidget {
  const SwapAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text("Swap Animation").animate().swap(
                  duration: const Duration(seconds: 1),
                  builder: (_, __) {
                    return const Text("After Swapping");
                  }),
              const SizedBox(
                height: 30,
              ),
              const Text("Horrible Pulsing Text")
                  .animate(
                      onPlay: (controller) => controller.repeat(
                          reverse: true, period: const Duration(seconds: 1)))
                  .fadeOut(curve: Curves.easeInOut)
                  .color(
                      begin: const Color.fromARGB(255, 25, 215, 31),
                      end: Colors.red,
                      duration: const Duration(milliseconds: 100)),
              const SizedBox(
                height: 30,
              ),

              //Call back function
              const Text("Hello").animate().fadeIn(duration: 600.ms).callback(
                  duration: 300.ms, callback: (_) => print('halfway')),

              // Listing to the event

              const Text("Listing .....")
                  .animate()
                  .fadeIn(curve: Curves.easeOutExpo)
                  .listen(
                      callback: (value) => print('current opacity: $value')),

              //Reacting to state changes

              TextButton(
                onPressed: () {},
                child: Text("Text"),
              ).animate(target: 1).fade(end: 0.7).scaleXY(end: 1.1)
            ],
          ),
        ),
      ),
    );
  }
}
