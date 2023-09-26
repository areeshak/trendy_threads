import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/product.dart';

class ProductListView extends StatelessWidget {
  final List<Product> productsList;

  const ProductListView({Key? key, required this.productsList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productsList.length,
        itemBuilder: (BuildContext context, int index) {
          final product = productsList[index];

          return Padding(
            padding: const EdgeInsets.only(right: 14.0),
            child: GestureDetector(
              onTap: () {
                // Handle onTap event for the product
              },
              child: Container(
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 85,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(product.imagePath[0]),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 3.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                              text: product.title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 12,
                                  height: 1.4),
                            ),
                            const TextSpan(text: '\n'),
                            TextSpan(
                              text: product.description,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                  height: 1.4),
                            ),
                            const TextSpan(text: '\n'),
                            TextSpan(
                              text: 'Rs. ${product.price.toString()}',
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                  height: 2.2),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
