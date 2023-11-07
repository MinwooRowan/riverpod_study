import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/provider/future_keep_alive_provider.dart';

class FutureKeepAliveScreen extends HookConsumerWidget {
  static String route = 'future_keep_alive';
  const FutureKeepAliveScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue teamName = ref.watch(getTeamNameProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Keep Alive Provider'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            teamName.when(
              data: (data) {
                return Text('Team Name: $data');
              },
              error: (err, trace) {
                return Text('Error: $err');
              },
              loading: () {
                return const CircularProgressIndicator();
              },
            ),
            const SizedBox(height: 20),
            const Text(
              '선언부 Annotation에 Keepalive를 했기 때문에,\n watch를 하고 있는 곳이 없어도 캐시를 계속 유지한다.\n& invalidate를 하지 않는 이상 캐시를 계속 유지한다.',
            ),
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
