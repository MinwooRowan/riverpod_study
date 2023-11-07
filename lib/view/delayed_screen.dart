import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/provider/delay_future_provider.dart';

class DelayedScreen extends HookConsumerWidget {
  static String route = 'delayed';
  const DelayedScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCompanyNamePending = useState<Future<String>?>(null);
    final snapshot = useFuture(getCompanyNamePending.value);
    final isErrored = snapshot.hasError &&
        snapshot.connectionState != ConnectionState.waiting;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delayed Provider'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () async {
                final future =
                    ref.read(delayedFutureProvider.notifier).getDelayedString();
                getCompanyNamePending.value = future;
              },
              child: const Text('Get Company Name'),
            ),
            if (snapshot.connectionState == ConnectionState.waiting) ...[
              const SizedBox(width: 8),
              const CircularProgressIndicator(),
            ] else if (isErrored) ...[
              const SizedBox(width: 8),
              const Text('Error'),
            ] else if (snapshot.hasData) ...[
              const SizedBox(width: 8),
              Text(snapshot.data!),
            ],
          ],
        ),
      ),
    );
  }
}
