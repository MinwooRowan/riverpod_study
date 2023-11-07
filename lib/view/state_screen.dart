import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/provider/user_name_provider.dart';

class StateScreen extends HookConsumerWidget {
  static String route = 'state';
  const StateScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);
    final userName = ref.watch(userNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Provider
            Text('User Name: $userName'),
            const SizedBox(height: 20),
            const Text(
              'Home에서 name Ref를 watch를 하고 있기 때문에\n StateProvider Screen으로 이동하고 다시 나와도\nState가 유지될 수 있다',
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    ref
                        .read(userNameProvider.notifier)
                        .setUserName(newUserName: 'New Name');
                  },
                  child: const Text('set new User Name'),
                ),
                TextButton(
                  onPressed: () {
                    ref
                        .read(userNameProvider.notifier)
                        .setUserName(newUserName: 'Minwoo');
                  },
                  child: const Text('set Minwoo'),
                ),
              ],
            ),

            const SizedBox(height: 40),
            // Hooks
            Text('Counter: ${counter.value}'),
            ElevatedButton(
              onPressed: () {
                counter.value++;
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
