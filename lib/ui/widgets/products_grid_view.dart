import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/utils/discounted_price.dart';

class ProductsGridView extends StatefulWidget {
  final List<Product> productsList;
  final int itemsPerRow;
  final double spacingX;
  final double spacingY;

  const ProductsGridView(
      {Key? key,
      required this.productsList,
      required this.itemsPerRow,
      required this.spacingX,
      required this.spacingY})
      : super(key: key);

  @override
  State<ProductsGridView> createState() => _ProductsGridViewState();
}

class _ProductsGridViewState extends State<ProductsGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.itemsPerRow,
        crossAxisSpacing: widget.spacingX,
        mainAxisSpacing: widget.spacingY,
      ),
      shrinkWrap: true,
      itemCount: widget.productsList.length,
      itemBuilder: (BuildContext context, int index) {
        final product = widget.productsList[index];
        return GestureDetector(
          onTap: () {},
          child: Container(
            width: 160,
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9).withOpacity(0.3),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 85,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.imagePath),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                  ),
                ),
                if (product.salePct != 0.0)
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 50,
                      color: const Color(0xffCA2121),
                      child: const Text(
                        'Sale',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                product.salePct == 0.0
                    ? Padding(
                        padding: const EdgeInsets.only(
                          top: 19.0,
                          left: 3.0,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: product.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.4),
                              ),
                              const TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                text: 'Rs. ${product.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                  height: 2.2,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(
                          top: 3.0,
                          left: 3.0,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: product.title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 15,
                                    height: 1.4),
                              ),
                              const TextSpan(
                                text: '\n',
                              ),
                              TextSpan(
                                text:
                                    'Rs. ${discountedPrice(originalPrice: product.price, discountPercentage: product.salePct)}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  fontSize: 15,
                                  height: 2.2,
                                ),
                              ),
                              const TextSpan(text: ' '),
                              TextSpan(
                                text: product.price.toString(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                  decoration: TextDecoration.lineThrough,
                                  fontSize: 12,
                                  height: 2.2,
                                ),
                              ),
                              TextSpan(
                                text: ' ${product.salePct}%',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff229B17),
                                  fontSize: 14,
                                  height: 2.2,
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
