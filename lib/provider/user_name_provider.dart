import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_name_provider.g.dart';

@riverpod
class UserName extends _$UserName {
  @override
  String build() {
    return 'minwoo';
  }

  void setUserName({required String newUserName}) {
    state = newUserName;
  }
}

@riverpod
String user(UserRef ref) {
  return 'minwoo';
}
