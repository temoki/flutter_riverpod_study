// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_state.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$testStateHash() => r'8cefedbe69dd9b421c5cc18f9efb5d27a0492fe8';

/// See also [TestState].
@ProviderFor(TestState)
final testStateProvider =
    AutoDisposeNotifierProvider<TestState, Person>.internal(
  TestState.new,
  name: r'testStateProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$testStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TestState = AutoDisposeNotifier<Person>;
String _$testStateFutureHash() => r'e4e507c67d6d72d7d24ddc953164003b863e23d7';

/// See also [TestStateFuture].
@ProviderFor(TestStateFuture)
final testStateFutureProvider =
    AutoDisposeAsyncNotifierProvider<TestStateFuture, Person>.internal(
  TestStateFuture.new,
  name: r'testStateFutureProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$testStateFutureHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TestStateFuture = AutoDisposeAsyncNotifier<Person>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
