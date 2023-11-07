import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/provider/future_keep_alive_provider.dart';
import 'package:riverpod_code_hooks/provider/pass_argument_provider.dart';

class PassArgumentScreen extends HookConsumerWidget {
  static String route = 'pass_argument';
  const PassArgumentScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final teamMemerInfo = ref.watch(getTeamMemberInfoProvider('Hosung'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('PassArgument Provider'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(teamMemerInfo),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ref.invalidate(getTeamNameProvider);
              },
              child: const Text('Invalidate Keep alive Provider'),
            ),
          ],
        ),
      ),
    );
  }
}
