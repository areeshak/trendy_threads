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
      category: "Women's Bag",
      title: 'Leather Strap Bag',
      description: '''
      - Stylish and versatile leather strap bag
      - Rich combination of brown and orange hues
      ''',
      price: 4500,
      imagePath: ['assets/images/hot pick 1.jpg'],
      quantity: 10,
      availableColors: [
        Colors.deepOrange,
      ],
    ),
    Product(
      category: "Women's Dress",
      title: 'Long Floral Dress',
      description: '''
      - Exquisite brownish floral print
      - Premium, breathable fabric
      - Unparalleled comfort and style
      - Perfect for any occasion
      - Elevate your wardrobe with this elegant piece
      ''',
      price: 5650,
      salePct: 20,
      imagePath: ['assets/images/hot pick 2.jpg'],
      quantity: 5,
      availableColors: [
        Colors.brown,
        Colors.blueGrey,
      ],
      availableSizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
    ),
    Product(
      category: "Men's Shirt",
      title: 'White Formal Shirt',
      description: '''
      - Classic white formal shirt for men
      ''',
      price: 3400,
      imagePath: ['assets/images/hot pick 3.jpg'],
      quantity: 10,
      availableColors: [
        Colors.white,
      ],
      availableSizes: [
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
    ),
    Product(
      category: "Women's Footwear",
      title: 'Beige High-heels',
      description: '''
      - Beige high heels for the modern woman
      - Features a sleek stiletto heel for added elegance
      - Built with a comfortable platform for stability
      ''',
      price: 8000,
      imagePath: ['assets/images/hot pick 4.jpg'],
      quantity: 24,
      availableColors: [
        const Color(0xFFB2A587),
      ],
      availableSizes: [
        '35',
        '37',
        '38',
        '39',
        '40',
        '41',
      ],
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
                child: CategoriesGridView(
                    categoriesList: categoriesList,
                    itemsPerRow: 3,
                    spacingX: 10,
                    spacingY: 20),
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
