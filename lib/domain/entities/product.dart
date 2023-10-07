import 'package:flutter/material.dart';
import 'dart:ui';

class Product {
  String category;
  String title;
  String description;
  double price;
  double salePct;
  int quantity;
  List<String> imagePath;
  List<Color>? availableColors;
  List<String>? availableSizes;

  Product(
      {required this.category,
      required this.title,
      required this.description,
      required this.price,
      this.salePct = 0.0,
      required this.quantity,
      required this.imagePath,
      this.availableColors,
      this.availableSizes});
}
