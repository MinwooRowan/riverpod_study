import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'future_provider.g.dart';

@riverpod
FutureOr<String> getCompanyName(GetCompanyNameRef ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return Future(() => 'Rowan');
}
