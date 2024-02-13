// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_query.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$itemsQueryHash() => r'50017a6003b342eceb024d8b2c78051693518106';

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

abstract class _$ItemsQuery
    extends BuildlessAutoDisposeAsyncNotifier<List<Item>> {
  late final ItemCategory? category;

  FutureOr<List<Item>> build(
    ItemCategory? category,
  );
}

/// See also [ItemsQuery].
@ProviderFor(ItemsQuery)
const itemsQueryProvider = ItemsQueryFamily();

/// See also [ItemsQuery].
class ItemsQueryFamily extends Family<AsyncValue<List<Item>>> {
  /// See also [ItemsQuery].
  const ItemsQueryFamily();

  /// See also [ItemsQuery].
  ItemsQueryProvider call(
    ItemCategory? category,
  ) {
    return ItemsQueryProvider(
      category,
    );
  }

  @override
  ItemsQueryProvider getProviderOverride(
    covariant ItemsQueryProvider provider,
  ) {
    return call(
      provider.category,
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
  String? get name => r'itemsQueryProvider';
}

/// See also [ItemsQuery].
class ItemsQueryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ItemsQuery, List<Item>> {
  /// See also [ItemsQuery].
  ItemsQueryProvider(
    ItemCategory? category,
  ) : this._internal(
          () => ItemsQuery()..category = category,
          from: itemsQueryProvider,
          name: r'itemsQueryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$itemsQueryHash,
          dependencies: ItemsQueryFamily._dependencies,
          allTransitiveDependencies:
              ItemsQueryFamily._allTransitiveDependencies,
          category: category,
        );

  ItemsQueryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.category,
  }) : super.internal();

  final ItemCategory? category;

  @override
  FutureOr<List<Item>> runNotifierBuild(
    covariant ItemsQuery notifier,
  ) {
    return notifier.build(
      category,
    );
  }

  @override
  Override overrideWith(ItemsQuery Function() create) {
    return ProviderOverride(
      origin: this,
      override: ItemsQueryProvider._internal(
        () => create()..category = category,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        category: category,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<ItemsQuery, List<Item>>
      createElement() {
    return _ItemsQueryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ItemsQueryProvider && other.category == category;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, category.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ItemsQueryRef on AutoDisposeAsyncNotifierProviderRef<List<Item>> {
  /// The parameter `category` of this provider.
  ItemCategory? get category;
}

class _ItemsQueryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ItemsQuery, List<Item>>
    with ItemsQueryRef {
  _ItemsQueryProviderElement(super.provider);

  @override
  ItemCategory? get category => (origin as ItemsQueryProvider).category;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
