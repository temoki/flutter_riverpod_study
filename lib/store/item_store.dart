import 'dart:math' as math;

import 'package:collection/collection.dart';
import 'package:flutter_riverpod_study/store/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

part 'item_store.g.dart';

@riverpod
ItemStore itemStore(ItemStoreRef ref) {
  return ItemStore();
}

class ItemStore {
  ItemStore();

  Future<List<Item>> getItems({ItemCategory? category}) async {
    await _sleepRandomly();
    return List.unmodifiable(_items.where(
      (e) => e.category == category,
    ));
  }

  Future<Item?> getItem({required Uuid id}) async {
    await _sleepRandomly();
    return _items.firstWhereOrNull((e) => e.id == id);
  }

  Future<void> createItem({
    required String title,
    required ItemCategory category,
    required String content,
  }) async {
    await _sleepRandomly();
    _items.add(
      Item.create(title: title, category: category, content: content),
    );
  }

  Future<void> updateItem(Item item) async {
    await _sleepRandomly();
    final index = _items.indexWhere((e) => e.id == item.id);
    if (index != -1) {
      _items[index] = item;
    }
  }

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
