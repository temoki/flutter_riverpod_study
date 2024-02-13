import 'package:flutter_riverpod_study/api_client/api_client.dart';
import 'package:flutter_riverpod_study/api_client/item.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'items_query.g.dart';

@riverpod
class ItemsQuery extends _$ItemsQuery {
  ItemCategory? _category;
  final int _page = 1;
  final int _perPage = 10;

  ApiClient get _apiClient => ref.read(apiClientProvider);

  @override
  Future<List<Item>> build(ItemCategory? category) {
    _category = category;
    return _apiClient.getItems(
        category: _category, page: _page, perPage: _perPage);
  }

  void loadMore() {
    if (state.isLoading) return;
    // TODO
  }
}
