import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'delay_future_provider.g.dart';

@riverpod
class DelayedFuture extends _$DelayedFuture {
  @override
  Future<String> build() async {
    await Future.delayed(const Duration(seconds: 3));
    return '';
  }

  Future<String> getDelayedString() async {
    await Future.delayed(const Duration(seconds: 3));
    return 'Rowan';
  }
}
