import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BannerEntity extends Equatable {
  final int id;
  final String title;
  final String subTitle;
  final String buttonText;
  final Color bgColor;
  final String bgImagePath;

  const BannerEntity({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.buttonText,
    required this.bgColor,
    required this.bgImagePath,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        subTitle,
        buttonText,
        bgColor,
        bgImagePath,
      ];
}
