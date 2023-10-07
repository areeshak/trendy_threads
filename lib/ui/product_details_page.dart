import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/ui/widgets/add_to_cart_bar.dart';
import 'package:trendy_threads/ui/widgets/colors_list_view.dart';
import 'package:trendy_threads/ui/widgets/custom_app_bar.dart';
import 'package:trendy_threads/ui/widgets/custom_carousel_slider.dart';
import 'package:trendy_threads/ui/widgets/sizes_list_view.dart';
import 'package:trendy_threads/utils/discounted_price.dart';
import 'package:trendy_threads/utils/sub_heading_text.dart';

class ProductDetailsPage extends StatefulWidget {
  final Product product;
  const ProductDetailsPage({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  bool showDesc = true;

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCarouselSlider(imageAssetPaths: widget.product.imagePath),
              const SizedBox(
                height: 20,
              ),
              SubHeadingText(text: "Women's ${widget.product.category}"),
              Text(
                widget.product.title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 20,
                  height: 1.5,
                ),
              ),
              widget.product.salePct == 0.0
                  ? RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text: 'Rs. ${widget.product.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            height: 2.6,
                          ),
                        ),
                      ]),
                    )
                  : RichText(
                      text: TextSpan(children: [
                        TextSpan(
                          text:
                              'Rs. ${discountedPrice(originalPrice: widget.product.price, discountPercentage: widget.product.salePct)}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 20,
                            height: 2.6,
                          ),
                        ),
                        const TextSpan(text: ' '),
                        TextSpan(
                          text: widget.product.price.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            decoration: TextDecoration.lineThrough,
                            fontSize: 16,
                            height: 2.6,
                          ),
                        ),
                        TextSpan(
                          text: ' ${widget.product.salePct}%',
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff229B17),
                            fontSize: 18,
                            height: 2.6,
                          ),
                        ),
                      ]),
                    ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Divider(
                  thickness: 4,
                  color: Color(0xffD9D9D9),
                ),
              ),
              if (widget.product.availableColors != null)
                const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text(
                    'Colors',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              widget.product.availableColors != null
                  ? SizedBox(
                      height: 85,
                      child: ColorsListView(
                          colors: widget.product.availableColors!),
                    )
                  : const SizedBox(),
              const SizedBox(
                height: 5,
              ),
              if (widget.product.availableSizes != null)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Sizes',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Size chart',
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  ),
                ),
              widget.product.availableSizes != null
                  ? SizedBox(
                      height: 60,
                      child:
                          SizesListView(sizes: widget.product.availableSizes!),
                    )
                  : const SizedBox(),
              if (widget.product.availableColors != null &&
                  widget.product.availableSizes != null)
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Divider(
                    thickness: 4,
                    color: Color(0xffD9D9D9),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Product Description',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        showDesc = !showDesc;
                        setState(() {});
                      },
                      child: showDesc
                          ? const Icon(
                              Icons.keyboard_arrow_up,
                            )
                          : const Icon(
                              Icons.keyboard_arrow_down,
                            ),
                    ),
                  ],
                ),
              ),
              if (showDesc)
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(widget.product.description),
                ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: AddToCartBar(
        product: widget.product,
      ),
    );
  }
}
