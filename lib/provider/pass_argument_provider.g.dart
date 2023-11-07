// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pass_argument_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getTeamMemberInfoHash() => r'23611615ae158ce9f4ab4b643744314ee54a4c68';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getTeamMemberInfo].
@ProviderFor(getTeamMemberInfo)
const getTeamMemberInfoProvider = GetTeamMemberInfoFamily();

/// See also [getTeamMemberInfo].
class GetTeamMemberInfoFamily extends Family<String> {
  /// See also [getTeamMemberInfo].
  const GetTeamMemberInfoFamily();

  /// See also [getTeamMemberInfo].
  GetTeamMemberInfoProvider call(
    String teamMembername,
  ) {
    return GetTeamMemberInfoProvider(
      teamMembername,
    );
  }

  @override
  GetTeamMemberInfoProvider getProviderOverride(
    covariant GetTeamMemberInfoProvider provider,
  ) {
    return call(
      provider.teamMembername,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getTeamMemberInfoProvider';
}

/// See also [getTeamMemberInfo].
class GetTeamMemberInfoProvider extends AutoDisposeProvider<String> {
  /// See also [getTeamMemberInfo].
  GetTeamMemberInfoProvider(
    String teamMembername,
  ) : this._internal(
          (ref) => getTeamMemberInfo(
            ref as GetTeamMemberInfoRef,
            teamMembername,
          ),
          from: getTeamMemberInfoProvider,
          name: r'getTeamMemberInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getTeamMemberInfoHash,
          dependencies: GetTeamMemberInfoFamily._dependencies,
          allTransitiveDependencies:
              GetTeamMemberInfoFamily._allTransitiveDependencies,
          teamMembername: teamMembername,
        );

  GetTeamMemberInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.teamMembername,
  }) : super.internal();

  final String teamMembername;

  @override
  Override overrideWith(
    String Function(GetTeamMemberInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetTeamMemberInfoProvider._internal(
        (ref) => create(ref as GetTeamMemberInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        teamMembername: teamMembername,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _GetTeamMemberInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetTeamMemberInfoProvider &&
        other.teamMembername == teamMembername;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, teamMembername.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetTeamMemberInfoRef on AutoDisposeProviderRef<String> {
  /// The parameter `teamMembername` of this provider.
  String get teamMembername;
}

class _GetTeamMemberInfoProviderElement
    extends AutoDisposeProviderElement<String> with GetTeamMemberInfoRef {
  _GetTeamMemberInfoProviderElement(super.provider);

  @override
  String get teamMembername =>
      (origin as GetTeamMemberInfoProvider).teamMembername;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
