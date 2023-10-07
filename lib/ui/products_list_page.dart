import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/ui/widgets/categories_list_view.dart';
import 'package:trendy_threads/ui/widgets/custom_app_bar.dart';
import 'package:trendy_threads/ui/widgets/products_grid_view.dart';

class ProductsListPage extends StatefulWidget {
  const ProductsListPage({Key? key}) : super(key: key);

  @override
  State<ProductsListPage> createState() => _ProductsListPageState();
}

class _ProductsListPageState extends State<ProductsListPage> {
  final List<Categories> femaleCategoriesList = [
    Categories(
      name: "All",
      imagePath: 'assets/images/category all 1.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Bags",
      imagePath: 'assets/images/category w 1.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Dress",
      imagePath: 'assets/images/category w 2.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Footwear",
      imagePath: 'assets/images/category w 3.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Bottoms",
      imagePath: 'assets/images/category w 4.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Tops",
      imagePath: 'assets/images/category w 5.jpg',
      destinationPage: const ProductsListPage(),
    ),
    Categories(
      name: "Accessories",
      imagePath: 'assets/images/category w 6.jpg',
      destinationPage: const ProductsListPage(),
    ),
  ];

  List<Product> femaleProductsList = [
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
    Product(
      category: "Accessories",
      title: "Silver Gold Plated Ring",
      description: '''
      - Stunning silver gold plated ring
      - Crafted with precision and care
      - Adds a touch of elegance to any outfit
      - Limited edition piece
      ''',
      price: 55500,
      quantity: 8,
      imagePath: ['assets/images/product 1.jpg'],
      availableSizes: [
        '5',
        '6',
        '7',
        '8',
        '9',
      ],
    ),
    Product(
      category: "Accessories",
      title: "Silver-color Pendant",
      description: '''
      - Exquisite silver-color pendant
      - Intricate design for a sophisticated look
      - Ideal for special occasions
      - Limited stock available
      ''',
      price: 75650,
      quantity: 30,
      imagePath: ['assets/images/product 2.jpg'],
    ),
    Product(
      category: "Tops",
      title: "Black Stone Top",
      description: '''
      - Stylish black stone top
      - Features a unique stone embellishment
      - Comfortable and trendy
      ''',
      price: 7110,
      salePct: 10.0,
      quantity: 10,
      imagePath: ['assets/images/product 3.jpg'],
      availableColors: [
        Colors.black,
      ],
      availableSizes: [
        'XS',
        'S',
        'M',
        'L',
      ],
    ),
    Product(
      category: "Footwear",
      title: "Strap Sliders",
      description: '''
      - Casual black strap sliders
      - Perfect for everyday wear
      - Slip-on convenience
      - Affordable and fashionable
      ''',
      price: 2300,
      quantity: 50,
      imagePath: ['assets/images/product 4.jpg'],
      availableColors: [
        Colors.black,
        const Color(0xff0B1D3F),
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
    Product(
      category: "Bottoms",
      title: "Blue Jeans",
      description: '''
      - Classic light blue jeans
      - Comfortable fit for all-day wear
      ''',
      price: 4500,
      quantity: 1,
      imagePath: ['assets/images/product 5.jpg'],
      availableColors: [
        Colors.lightBlue,
        const Color(0xff0B1D3F),
      ],
      availableSizes: [
        '28',
        '30',
        '32',
        '34',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(showMenuIcon: false, text: 'Women'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 100,
                child: CategoriesListView(categoriesList: femaleCategoriesList),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Icon(Icons.sort),
                    Text('125 products found'),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  child: ProductsGridView(
                      productsList: femaleProductsList,
                      itemsPerRow: 2,
                      spacingX: 30,
                      spacingY: 40),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
