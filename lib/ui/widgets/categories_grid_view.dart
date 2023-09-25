import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';
import 'package:trendy_threads/utils/sub_heading_text.dart';

class CategoriesGridView extends StatefulWidget {
  final List<Categories> categoriesList;
  final int itemsPerRow;
  final double spacingX;
  final double spacingY;

  const CategoriesGridView(
      {Key? key,
      required this.categoriesList,
      required this.itemsPerRow,
      required this.spacingX,
      required this.spacingY})
      : super(key: key);

  @override
  State<CategoriesGridView> createState() => _CategoriesGridViewState();
}

class _CategoriesGridViewState extends State<CategoriesGridView> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: widget.itemsPerRow,
        crossAxisSpacing: widget.spacingX,
        mainAxisSpacing: widget.spacingY,
      ),
      itemCount: widget.categoriesList.length,
      itemBuilder: (BuildContext context, int index) {
        final category = widget.categoriesList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => category.destinationPage,
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 0.09,
                    ),
                    image: DecorationImage(
                      image: AssetImage(category.imagePath),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(0, 4),
                        spreadRadius: 0,
                      )
                    ],
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SubHeadingText(text: category.name),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
