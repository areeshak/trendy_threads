import 'package:flutter/material.dart';
import 'package:trendy_threads/domain/entities/categories.dart';

class CategoriesListView extends StatefulWidget {
  final List<Categories> categoriesList;
  const CategoriesListView({
    Key? key,
    required this.categoriesList,
  }) : super(key: key);

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      itemCount: widget.categoriesList.length,
      itemBuilder: (context, index) {
        final category = widget.categoriesList[index];
        return Padding(
          padding: const EdgeInsets.only(right: 14.0),
          child: GestureDetector(
            onTap: () {},
            child: Column(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 65,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          category.imagePath),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                    // border: Border.all(
                    //   color: const Color(0xff7E96ED),
                    //   width: 4,
                    // ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2.0),
                  child: Text(
                    category.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    )
    ;
  }
}
