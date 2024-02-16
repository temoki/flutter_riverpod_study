import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'test_state.freezed.dart';
part 'test_state.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    required String firstName,
    required String lastName,
    required int age,
  }) = _Person;
}

@riverpod
class TestState extends _$TestState {
  @override
  Person build() {
    debugPrint('[TestState] build');
    debugPrint('[TestState] stateOrNull => $stateOrNull');
    return const Person(
      firstName: 'John',
      lastName: 'Doe',
      age: 30,
    );
  }
}

@riverpod
class TestStateFuture extends _$TestStateFuture {
  @override
  Future<Person> build() async {
    debugPrint('[TestStateFuture] build');
    debugPrint('[TestStateFuture] stateOrNull => $state');
    await Future.delayed(const Duration(seconds: 3));
    return const Person(
      firstName: 'John',
      lastName: 'Doe',
      age: 30,
    );
  }
}
