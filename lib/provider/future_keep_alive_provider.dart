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
  Future<String> build() async {
    await Future.delayed(const Duration(seconds: 2));
    return Future.value('Client');
  }
}
