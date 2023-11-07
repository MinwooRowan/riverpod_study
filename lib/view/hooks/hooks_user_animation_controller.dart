import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HooksUseAnimationControllerScreen extends HookConsumerWidget {
  static const route = 'hooks_use_animation_controller';
  const HooksUseAnimationControllerScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animationController =
        useAnimationController(duration: const Duration(seconds: 1));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hooks use AnimationController Screen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: animationController,
              child: const FlutterLogo(size: 100),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (animationController.isCompleted) {
            animationController.reverse();
          } else {
            animationController.forward();
          }
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
