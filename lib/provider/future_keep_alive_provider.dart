import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'future_keep_alive_provider.g.dart';

// @Riverpod(keepAlive: true)
// FutureOr<String> getTeamName(GetTeamNameRef ref) async {
//   await Future.delayed(const Duration(seconds: 1));
//   return Future(() => 'Client');
// }

@Riverpod(keepAlive: true)
class GetTeamName extends _$GetTeamName {
  @override
  FutureOr<String> build() async {
    state = const AsyncValue.loading();
    await Future.delayed(const Duration(seconds: 2));
    state = const AsyncValue.data('Client');
    return 'Client';
  }
}
