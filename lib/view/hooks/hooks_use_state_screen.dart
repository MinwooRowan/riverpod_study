import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/config/logger.dart';

class HooksUseStateScreen extends HookConsumerWidget {
  static const route = 'hooks_use_state';
  const HooksUseStateScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState(0);

    // useEffect를 사용하여 특정 상태 값이 변경될 때마다 부수 효과를 실행합니다.
    useEffect(() {
      // 여기에는 count.value가 변경될 때마다 실행할 코드를 작성합니다.
      logger.i('Count has changed to: ${counter.value}');

      return null; // 또는 생략하여 아무것도 반환하지 않습니다.
    }, [counter.value]); // count.value가 바뀔 때마다 이 효과를 재실행합니다.

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hooks use State Screen'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Counter: ${counter.value}'),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    counter.value++;
                  },
                  child: const Text('Increment'),
                ),
                ElevatedButton(
                  onPressed: () {
                    counter.value--;
                  },
                  child: const Text('Decrement'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
