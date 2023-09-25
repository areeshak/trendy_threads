import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';
import 'package:trendy_threads/ui/product_listing.dart';
import 'package:trendy_threads/ui/widgets/categories_grid_view.dart';
import 'package:trendy_threads/ui/widgets/custom_app_bar.dart';
import 'package:trendy_threads/utils/heading_text.dart';

class CategoriesListPage extends StatefulWidget {
  const CategoriesListPage({Key? key}) : super(key: key);

  @override
  State<CategoriesListPage> createState() => _CategoriesListPageState();
}

class _CategoriesListPageState extends State<CategoriesListPage> {

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

  final List<Categories> maleCategoriesList = [
    Categories(
      name: "All",
      imagePath: 'assets/images/category m all.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Shirt",
      imagePath: 'assets/images/category m 1.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Bottom",
      imagePath: 'assets/images/category m 2.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Footwear",
      imagePath: 'assets/images/category m 3.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Jackets",
      imagePath: 'assets/images/category m 4.jpg',
      destinationPage: const ProductListing(),
    ),
    Categories(
      name: "Accessories",
      imagePath: 'assets/images/category m 5.jpg',
      destinationPage: const ProductListing(),
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  const Text(
                    'Female',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 1.3,
                    width: MediaQuery.of(context).size.width * 0.69,
                    color: Colors.black87,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 25),
                child: SizedBox(
                  height: 370,
                  child: CategoriesGridView(categoriesList: femaleCategoriesList, itemsPerRow: 3, spacingX: 10, spacingY: 0,),
                ),
              ),
              Row(
                children: [
                  const HeadingText(text: 'Male'),
                  const SizedBox(
                    width: 12,
                  ),
                  Container(
                    height: 1.3,
                    width: MediaQuery.of(context).size.width * 0.76,
                    color: Colors.black87,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: SizedBox(
                  height: 250,
                  child: CategoriesGridView(categoriesList: maleCategoriesList, itemsPerRow: 3, spacingX: 10, spacingY: 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
