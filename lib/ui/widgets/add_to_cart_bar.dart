import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/product.dart';
import 'package:trendy_threads/utils/heading_text.dart';

class AddToCartBar extends StatefulWidget {
  final Product product;
  const AddToCartBar({Key? key, required this.product,}) : super(key: key);

  @override
  State<AddToCartBar> createState() => _AddToCartBarState();
}

class _AddToCartBarState extends State<AddToCartBar> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 45,
              //color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      //border: Border.all(color: quantity > 1 ? const Color(0xFF295391) : Colors.grey.withOpacity(0.5))
                    ),
                    child: GestureDetector(
                      onTap: () {
                        quantity > 1 ? quantity-- : null;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.remove,
                        size: 30,
                        color: quantity > 1 ? const Color(0xFF295391) : Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                  HeadingText(text: quantity.toString()),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        quantity <  widget.product.quantity ? quantity++ : null;
                        setState(() {

                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 30,
                        color: quantity <  widget.product.quantity ? const Color(0xFF295391) : Colors.grey.withOpacity(0.5),
                      ),
                    ),
                  ),
                ],
              )),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 45,
            color: const Color(0xFF295391),
            child: const Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
