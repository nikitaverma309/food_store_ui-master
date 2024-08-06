import 'package:flutter/material.dart';

class FoodCardModel {
  final String imgSrc;
  final String title;
  final Color color;
  final int price;

  FoodCardModel({
    required this.color,
    required this.title,
    required this.imgSrc,
    required this.price,
  });
}
