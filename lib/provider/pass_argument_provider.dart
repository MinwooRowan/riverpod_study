import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pass_argument_provider.g.dart';

@riverpod
String getTeamMemberInfo(GetTeamMemberInfoRef ref, String teamMembername) {
  return 'Name: $teamMembername, Role: Developer';
}
