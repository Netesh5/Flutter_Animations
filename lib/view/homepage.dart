import 'package:animation_app/view/black_hole/black_hole.dart';
import 'package:animation_app/view/animate_package/animate_pacekage_page.dart';
import 'package:animation_app/view/animate_package/animated_list.dart';
import 'package:animation_app/view/animate_package/blur_animation.dart';
import 'package:animation_app/view/animate_package/shimmer_effect.dart';
import 'package:animation_app/view/animate_package/swap_animation.dart';
import 'package:animation_app/view/explict_animation/explict_animation.dart';
import 'package:animation_app/view/implicit_animation/implicit_animation.dart';
import 'package:animation_app/view/solar_system/solar_system.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text("Animate Package"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatePackagePage()));
            },
          ),
          ListTile(
            title: const Text("Animate List"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AnimatedListDemo()));
            },
          ),
          ListTile(
            title: const Text("Swap Animation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SwapAnimation()));
            },
          ),
          ListTile(
            title: const Text("Blur Animation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BlurAnimation()));
            },
          ),
          ListTile(
            title: const Text("Shimmer Animation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ShimmerAnimation()));
            },
          ),
          ListTile(
            title: const Text("Implict Animation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ImplictAnimation()));
            },
          ),
          ListTile(
            title: const Text("Breathing Animation"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const BreathingAnimation()));
            },
          ),
          ListTile(
            title: const Text("Solar System"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SolarSystemAnimation()));
            },
          ),
          ListTile(
            title: const Text("Solar System"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CardHiddenAnimationPage()));
            },
          ),
          ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                    behavior: SnackBarBehavior.floating,
                    content: Text("Snack bar"),
                    margin: EdgeInsets.only(bottom: 500),
                    dismissDirection: DismissDirection.none);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text("Show Snackbar")),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                final snackBar = MaterialBanner(
                  content: AwesomeSnackbarContent(
                    title: "Awesome snackbar",
                    message: "Snackbar",
                    contentType: ContentType.success,
                    inMaterialBanner: true,
                  ),
                  actions: const [SizedBox.shrink()],
                );
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showMaterialBanner(snackBar);
              },
              child: const Text("Awesome snackbar")),
        ],
      ),
    );
  }
}
