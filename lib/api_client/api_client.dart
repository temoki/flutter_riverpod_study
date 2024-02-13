import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod_study/api_client/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'api_client.g.dart';

@Riverpod(keepAlive: true)
ApiClient apiClient(ApiClientRef ref) {
  return _MockApiClient();
}

@immutable
class CreateItemInput {
  final String title;
  final ItemCategory category;
  final String content;
  final bool isFavorite;

  const CreateItemInput({
    required this.title,
    required this.category,
    required this.content,
    required this.isFavorite,
  });
}

@immutable
class UpdateItemInput {
  final Uuid id;
  final String title;
  final ItemCategory category;
  final String content;
  final bool isFavorite;

  const UpdateItemInput({
    required this.id,
    required this.title,
    required this.category,
    required this.content,
    required this.isFavorite,
  });
}

interface class ApiClient {
  Future<List<Item>> getItems(
      {ItemCategory? category, int page = 1, int perPage = 10}) {
    throw UnimplementedError();
  }

  Future<Item?> getItem({required Uuid id}) {
    throw UnimplementedError();
  }

  Future<void> createItem({required CreateItemInput input}) {
    throw UnimplementedError();
  }

  Future<void> updateItem({required UpdateItemInput input}) {
    throw UnimplementedError();
  }

  Future<void> deleteItem({required Uuid id}) {
    throw UnimplementedError();
  }
}

class _MockApiClient implements ApiClient {
  _MockApiClient();

  @override
  Future<List<Item>> getItems(
      {ItemCategory? category, int page = 1, int perPage = 10}) async {
    await _sleepRandomly();
    if (page <= 0 || perPage <= 0) {
      return List.unmodifiable([]);
    }

    final items = _items.where((e) => e.category == category).toList();

    final start = math.min((page - 1) * perPage, items.length);
    final end = math.min(page * perPage, items.length);
    return List.unmodifiable(items.sublist(start, end));
  }

  @override
  Future<Item?> getItem({required Uuid id}) async {
    await _sleepRandomly();
    return _items.firstWhereOrNull((e) => e.id == id);
  }

  @override
  Future<void> createItem({required CreateItemInput input}) async {
    await _sleepRandomly();
    _items.add(
      Item(
        id: const Uuid(),
        title: input.title,
        category: input.category,
        content: input.content,
        isFavorite: input.isFavorite,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<void> updateItem({required UpdateItemInput input}) async {
    await _sleepRandomly();
    final index = _items.indexWhere((e) => e.id == input.id);
    if (index != -1) {
      _items[index] = _items[index].copyWith(
        title: input.title,
        category: input.category,
        content: input.content,
        isFavorite: input.isFavorite,
        updatedAt: DateTime.now(),
      );
    }
  }

  @override
  Future<void> deleteItem({required Uuid id}) async {
    await _sleepRandomly();
    _items.removeWhere((e) => e.id == id);
  }

  final List<Item> _items = [];

  Future<void> _sleepRandomly() async {
    final milliseconds = 500 + math.Random().nextInt(500);
    await Future.delayed(Duration(milliseconds: milliseconds));
  }
}
