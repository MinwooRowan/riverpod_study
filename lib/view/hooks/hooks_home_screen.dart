import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/view/hooks/hooks_use_state_screen.dart';
import 'package:riverpod_code_hooks/view/hooks/hooks_user_animation_controller.dart';

class HooksHomeScreen extends HookConsumerWidget {
  static const route = 'hooks_home';
  const HooksHomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hooks Home Screen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.pushNamed(HooksUseStateScreen.route);
              },
              child: const Text('Hooks use State'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(HooksUseAnimationControllerScreen.route);
              },
              child: const Text('Hooks use AnimationController'),
            ),
          ],
        ),
      ),
    );
  }
}
