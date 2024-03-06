import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BlurAnimation extends StatefulWidget {
  const BlurAnimation({super.key});

  @override
  State<BlurAnimation> createState() => _BlurAnimationState();
}

class _BlurAnimationState extends State<BlurAnimation> {
  double _value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 400,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/avatar.jpg"))),
            )
                .animate()
                .blur(begin: const Offset(0, 0), end: Offset(_value, _value)),
            const SizedBox(
              height: 30,
            ),
            Slider.adaptive(
                max: 10,
                value: _value,
                onChanged: (value) {
                  _value = value;
                  setState(() {});
                })
          ],
        ),
      )),
    );
  }
}
