import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ProductEntity extends Equatable {
  final int id;
  final String name;
  final String price;
  final double rating;
  final String imagePath;
  final String category;
  final bool isNew;
  final int reviewCount;
  final List<Color> colors;

  const ProductEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.rating,
    required this.imagePath,
    required this.category,
    required this.isNew,
    required this.reviewCount,
    required this.colors,
  });

  @override
  List<Object?> get props => [id, name, price, category, rating, isNew];
}
