import 'package:flutter/material.dart';
import 'package:flutter_riverpod_study/test_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestPage extends ConsumerWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(testStateProvider);
    final s = ref.watch(testStateFutureProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('isLoading: ${s.isLoading}'),
          Text('isRefreshing: ${s.isRefreshing}'),
          Text('isReloading: ${s.isReloading}'),
          Text('hasValue: ${s.hasValue}'),
          Text('hasError: ${s.hasError}'),
          const SizedBox(height: 8),
          Text('firstName: ${s.valueOrNull?.firstName}'),
          Text('lastName: ${s.valueOrNull?.lastName}'),
          Text('age: ${s.valueOrNull?.age}'),
          const SizedBox(height: 8),
          TextButton(
            onPressed: () {
              ref.invalidate(testStateProvider);
              ref.invalidate(testStateFutureProvider);
            },
            child: const Text('invalidate'),
          ),
          TextButton(
            onPressed: () {
              ref.refresh(testStateProvider);
              ref.refresh(testStateFutureProvider);
            },
            child: const Text('refresh'),
          ),
        ],
      ),
    );
  }
}
