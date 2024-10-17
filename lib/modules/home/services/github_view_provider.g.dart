// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_view_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$searchControllerNotifierHash() =>
    r'e0b6c346ba8c956df086970c518c9d20c97339a9';

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

abstract class _$SearchControllerNotifier
    extends BuildlessAutoDisposeNotifier<String> {
  late final TextEditingController messageController;

  String build(
    TextEditingController messageController,
  );
}

/// See also [SearchControllerNotifier].
@ProviderFor(SearchControllerNotifier)
const searchControllerNotifierProvider = SearchControllerNotifierFamily();

/// See also [SearchControllerNotifier].
class SearchControllerNotifierFamily extends Family<String> {
  /// See also [SearchControllerNotifier].
  const SearchControllerNotifierFamily();

  /// See also [SearchControllerNotifier].
  SearchControllerNotifierProvider call(
    TextEditingController messageController,
  ) {
    return SearchControllerNotifierProvider(
      messageController,
    );
  }

  @override
  SearchControllerNotifierProvider getProviderOverride(
    covariant SearchControllerNotifierProvider provider,
  ) {
    return call(
      provider.messageController,
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
  String? get name => r'searchControllerNotifierProvider';
}

/// See also [SearchControllerNotifier].
class SearchControllerNotifierProvider
    extends AutoDisposeNotifierProviderImpl<SearchControllerNotifier, String> {
  /// See also [SearchControllerNotifier].
  SearchControllerNotifierProvider(
    TextEditingController messageController,
  ) : this._internal(
          () =>
              SearchControllerNotifier()..messageController = messageController,
          from: searchControllerNotifierProvider,
          name: r'searchControllerNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$searchControllerNotifierHash,
          dependencies: SearchControllerNotifierFamily._dependencies,
          allTransitiveDependencies:
              SearchControllerNotifierFamily._allTransitiveDependencies,
          messageController: messageController,
        );

  SearchControllerNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.messageController,
  }) : super.internal();

  final TextEditingController messageController;

  @override
  String runNotifierBuild(
    covariant SearchControllerNotifier notifier,
  ) {
    return notifier.build(
      messageController,
    );
  }

  @override
  Override overrideWith(SearchControllerNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: SearchControllerNotifierProvider._internal(
        () => create()..messageController = messageController,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        messageController: messageController,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<SearchControllerNotifier, String>
      createElement() {
    return _SearchControllerNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SearchControllerNotifierProvider &&
        other.messageController == messageController;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, messageController.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SearchControllerNotifierRef on AutoDisposeNotifierProviderRef<String> {
  /// The parameter `messageController` of this provider.
  TextEditingController get messageController;
}

class _SearchControllerNotifierProviderElement
    extends AutoDisposeNotifierProviderElement<SearchControllerNotifier, String>
    with SearchControllerNotifierRef {
  _SearchControllerNotifierProviderElement(super.provider);

  @override
  TextEditingController get messageController =>
      (origin as SearchControllerNotifierProvider).messageController;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
