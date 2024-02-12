import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

enum ItemCategory {
  food,
  clothes,
  book,
  electronic,
}

@immutable
class Item {
  final Uuid id;
  final String title;
  final ItemCategory category;
  final String content;
  final bool isFavorite;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Item._({
    required this.id,
    required this.title,
    required this.category,
    required this.content,
    required this.isFavorite,
    required this.createdAt,
    required this.updatedAt,
  });

  static Item create({
    required String title,
    required ItemCategory category,
    required String content,
    bool isFavorite = false,
  }) =>
      Item._(
        id: const Uuid(),
        title: title,
        category: category,
        content: content,
        isFavorite: isFavorite,
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

  Item copyWith({
    String? title,
    ItemCategory? category,
    String? content,
    bool? isFavorite,
    DateTime? updatedAt,
  }) {
    return Item._(
      id: id,
      title: title ?? this.title,
      category: category ?? this.category,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
