import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/ui/products_list_page.dart';
import 'package:trendy_threads/ui/widgets/categories_grid_view.dart';
import 'package:trendy_threads/ui/widgets/custom_app_bar.dart';
import 'package:trendy_threads/ui/widgets/custom_carousel_slider.dart';
import 'package:trendy_threads/ui/widgets/identity_card.dart';
import 'package:trendy_threads/ui/widgets/products_list_view.dart';
import 'package:trendy_threads/utils/heading_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _currentIndex = 0;
  List<Categories> categoriesList = [
    Categories(
      name: "Women's Bags",
      imagePath: 'assets/images/category w 1.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Men's Shirt",
      imagePath: 'assets/images/category m 1.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Women's Footwear",
      imagePath: 'assets/images/category w 3.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Men's Footwear",
      imagePath: 'assets/images/category m 3.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Women's Tops",
      imagePath: 'assets/images/category w 5.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Women's Accessories",
      imagePath: 'assets/images/category w 6.jpg',
      destinationPage: const ProductsListPage(),
    ),
  ];


  final List<Product> productsList = [
    Product(
      category: "Category 1",
      title: "Women's Bag",
      description: 'Leather Strap Bag',
      price: 4500,
      imagePath: 'assets/images/hot pick 1.jpg',
      quantity: 100,
    ),
    Product(
      category: "Category 2",
      title: "Women's Dress",
      description: 'Long Floral Dress',
      price: 5650,
      imagePath: 'assets/images/hot pick 2.jpg',
      quantity: 50,
    ),
    Product(
      category: "Category 3",
      title: "Men's Shirt",
      description: 'White Formal Shirt',
      price: 3400,
      imagePath: 'assets/images/hot pick 3.jpg',
      quantity: 10,
    ),
    Product(
      category: "Category 4",
      title: "Women's Footwear",
      description: 'Beige High-heels',
      price: 8000,
      imagePath: 'assets/images/hot pick 4.jpg',
      quantity: 24,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showAppName: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const CustomCarouselSlider(imageAssetPaths: [
                'assets/images/New Collection.png',
                'assets/images/Summer Sale.png',
              ]),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingText(text: 'Shop by Identity'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  IdentityCard(
                    title: 'Female',
                    imagePath: 'assets/images/Female Outline.png',
                    destinationPage: ProductsListPage(),
                  ),
                  IdentityCard(
                    title: 'Male',
                    imagePath: 'assets/images/Male Outline.png',
                    destinationPage: ProductsListPage(),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingText(text: 'Trending Category'),
                ),
              ),
              SizedBox(
                height: 270,
                child: CategoriesGridView(categoriesList: categoriesList, itemsPerRow: 3, spacingX: 10, spacingY: 20),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingText(text: 'Hot Picks'),
                ),
              ),
              SizedBox(
                height: 170,
                child: ProductListView(productsList: productsList),
              )
            ],
          ),
        ),
      ),
    );
  }
}
