import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/ui/widgets/categories_list_view.dart';
import 'package:trendy_threads/ui/widgets/custom_app_bar.dart';
import 'package:trendy_threads/ui/widgets/products_grid_view.dart';

class ProductListing extends StatefulWidget {
  const ProductListing({Key? key}) : super(key: key);

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  final List<Categories> femaleCategoriesList = [
    Categories(
      name: "All",
      imagePath: 'assets/images/category all 1.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Bags",
      imagePath: 'assets/images/category w 1.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Dress",
      imagePath: 'assets/images/category w 2.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Footwear",
      imagePath: 'assets/images/category w 3.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Bottoms",
      imagePath: 'assets/images/category w 4.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Tops",
      imagePath: 'assets/images/category w 5.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Accessories",
      imagePath: 'assets/images/category w 6.jpg',
      destinationPage: const ProductListing(),
    ),
  ];

  List<Product> femaleProductsList = [
    Product(
      category: "Bag",
      title: "Leather Strap Bag",
      description: "Product description 1",
      price: 4500,
      quantity: 1,
      imagePath: 'assets/images/hot pick 1.jpg',
    ),
    Product(
      category: "Dress",
      title: "Long Floral Dress",
      description: "Product description 2",
      price: 5650,
      salePct: 20.0,
      quantity: 1,
      imagePath: 'assets/images/hot pick 2.jpg',
    ),
    Product(
      category: "Footwear",
      title: "Beige High Heels",
      description: "Product description 3",
      price: 8000,
      quantity: 1,
      imagePath: 'assets/images/hot pick 4.jpg',
    ),
    Product(
      category: "Accessories",
      title: "Silver Gold Plated Ring",
      description: "Product description 4",
      price: 55500,
      quantity: 1,
      imagePath: 'assets/images/product 1.jpg',
    ),
    Product(
      category: "Accessories",
      title: "Silver-color Pendant",
      description: "Product description 5",
      price: 75650,
      quantity: 1,
      imagePath: 'assets/images/product 2.jpg',
    ),
    Product(
      category: "Tops",
      title: "Black Stone Top",
      description: "Product description 6",
      price: 7110,
      salePct: 10.0,
      quantity: 1,
      imagePath: 'assets/images/product 3.jpg',
    ),
    Product(
      category: "Footwear",
      title: "Black Strap Sliders",
      description: "Product description 7",
      price: 2300,
      quantity: 1,
      imagePath: 'assets/images/product 4.jpg',
    ),
    Product(
      category: "Bottoms",
      title: "Light blue Jeans",
      description: "Product description 8",
      price: 4500,
      quantity: 1,
      imagePath: 'assets/images/product 5.jpg',
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
