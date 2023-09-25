import 'package:flutter/material.dart';
import 'package:trendy_threads/ui/categories_list_page.dart';
import 'package:trendy_threads/ui/home_page.dart';
import 'package:trendy_threads/ui/product_listing.dart';
import 'package:trendy_threads/ui/widgets/custom_bottom_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trendy Threads',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CustomBottomBar(),
    );
  }
}


