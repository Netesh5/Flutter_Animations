import 'package:animation_app/view/implicit_animation/tween_animation.dart';
import 'package:flutter/material.dart';

class ImplictAnimation extends StatefulWidget {
  const ImplictAnimation({super.key});

  @override
  State<ImplictAnimation> createState() => _ImplictAnimationState();
}

class _ImplictAnimationState extends State<ImplictAnimation> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            AnimatedContainer(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isExpanded ? Colors.amberAccent : Colors.redAccent,
              ),
              width: isExpanded ? 300 : 100,
              height: 50,
              duration: const Duration(seconds: 1),
              child: IconButton(
                  onPressed: () {
                    setState(() {
                      isExpanded = !isExpanded;
                    });
                  },
                  icon: Icon(
                    Icons.shopify_outlined,
                    color: isExpanded ? Colors.white : Colors.purple,
                    size: 40,
                  )),
            ),
            const SizedBox(
              height: 100,
            ),
            const TweenAnimation()
          ],
        ),
      )),
    );
  }
}
