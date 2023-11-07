import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/provider/user_name_provider.dart';
import 'package:riverpod_code_hooks/view/delayed_screen.dart';
import 'package:riverpod_code_hooks/view/future_keep_alive_screen.dart';
import 'package:riverpod_code_hooks/view/future_screen.dart';
import 'package:riverpod_code_hooks/view/pass_argument_screen.dart';
import 'package:riverpod_code_hooks/view/state_screen.dart';

class HomeScreen extends HookConsumerWidget {
  static String route = '/';
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('User Name : ${ref.watch(userNameProvider)}'),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(StateScreen.route);
              },
              child: const Text('State Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(FutureScreen.route);
              },
              child: const Text('Future Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(DelayedScreen.route);
              },
              child: const Text('Delayed Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(FutureKeepAliveScreen.route);
              },
              child: const Text('Future Keep Alive Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                context.pushNamed(PassArgumentScreen.route);
              },
              child: const Text('PassArgument Provider'),
            ),
          ],
        ),
      ),
    );
  }
}
