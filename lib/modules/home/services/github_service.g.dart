// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$githubNotifierHash() => r'7399e9c328aa3aa48abebfd6ff5ddb96c8b4a3fd';

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

abstract class _$GithubNotifier
    extends BuildlessAutoDisposeAsyncNotifier<SearchResult> {
  late final ApiService<dynamic> apiService;

  FutureOr<SearchResult> build(
    ApiService<dynamic> apiService,
  );
}

/// See also [GithubNotifier].
@ProviderFor(GithubNotifier)
const githubNotifierProvider = GithubNotifierFamily();

/// See also [GithubNotifier].
class GithubNotifierFamily extends Family<AsyncValue<SearchResult>> {
  /// See also [GithubNotifier].
  const GithubNotifierFamily();

  /// See also [GithubNotifier].
  GithubNotifierProvider call(
    ApiService<dynamic> apiService,
  ) {
    return GithubNotifierProvider(
      apiService,
    );
  }

  @override
  GithubNotifierProvider getProviderOverride(
    covariant GithubNotifierProvider provider,
  ) {
    return call(
      provider.apiService,
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
  String? get name => r'githubNotifierProvider';
}

/// See also [GithubNotifier].
class GithubNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GithubNotifier, SearchResult> {
  /// See also [GithubNotifier].
  GithubNotifierProvider(
    ApiService<dynamic> apiService,
  ) : this._internal(
          () => GithubNotifier()..apiService = apiService,
          from: githubNotifierProvider,
          name: r'githubNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$githubNotifierHash,
          dependencies: GithubNotifierFamily._dependencies,
          allTransitiveDependencies:
              GithubNotifierFamily._allTransitiveDependencies,
          apiService: apiService,
        );

  GithubNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.apiService,
  }) : super.internal();

  final ApiService<dynamic> apiService;

  @override
  FutureOr<SearchResult> runNotifierBuild(
    covariant GithubNotifier notifier,
  ) {
    return notifier.build(
      apiService,
    );
  }

  @override
  Override overrideWith(GithubNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: GithubNotifierProvider._internal(
        () => create()..apiService = apiService,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        apiService: apiService,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GithubNotifier, SearchResult>
      createElement() {
    return _GithubNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GithubNotifierProvider && other.apiService == apiService;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, apiService.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GithubNotifierRef on AutoDisposeAsyncNotifierProviderRef<SearchResult> {
  /// The parameter `apiService` of this provider.
  ApiService<dynamic> get apiService;
}

class _GithubNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GithubNotifier,
        SearchResult> with GithubNotifierRef {
  _GithubNotifierProviderElement(super.provider);

  @override
  ApiService<dynamic> get apiService =>
      (origin as GithubNotifierProvider).apiService;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
