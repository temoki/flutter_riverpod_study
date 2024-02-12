import 'package:flutter_riverpod_study/store/item_store.dart';
import 'package:flutter_riverpod_study/store/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_query.g.dart';

@riverpod
Future<List<Item>> itemsQuery(
  ItemsQueryRef ref, {
  ItemCategory? category,
}) async {
  return await ref.read(itemStoreProvider).getItems(category: category);
}
