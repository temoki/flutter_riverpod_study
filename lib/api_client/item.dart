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

  const Item({
    required this.id,
    required this.title,
    required this.category,
    required this.content,
    required this.isFavorite,
    required this.createdAt,
    required this.updatedAt,
  });

  Item copyWith({
    Uuid? id,
    String? title,
    ItemCategory? category,
    String? content,
    bool? isFavorite,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Item(
      id: id ?? this.id,
      title: title ?? this.title,
      category: category ?? this.category,
      content: content ?? this.content,
      isFavorite: isFavorite ?? this.isFavorite,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
