import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselSlider extends StatelessWidget {

  final List<String> imageAssetPaths;

  const CustomCarouselSlider({Key? key, required this.imageAssetPaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: imageAssetPaths.map((assetPath) {
        return Image.asset(assetPath);
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
      ),
    );
  }
}
