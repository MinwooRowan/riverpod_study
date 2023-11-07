// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_name_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userHash() => r'657aa9ca4ea8e9813ad68da210f20a82195e7249';

/// See also [user].
@ProviderFor(user)
final userProvider = AutoDisposeProvider<String>.internal(
  user,
  name: r'userProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef UserRef = AutoDisposeProviderRef<String>;
String _$userNameHash() => r'64d11f5d90a464c2ade3942ea234f1450469b479';

/// See also [UserName].
@ProviderFor(UserName)
final userNameProvider = AutoDisposeNotifierProvider<UserName, String>.internal(
  UserName.new,
  name: r'userNameProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$userNameHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserName = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
