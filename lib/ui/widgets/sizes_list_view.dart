import 'package:flutter/material.dart';
import 'package:trendy_threads/utils/sub_heading_text.dart';

class SizesListView extends StatefulWidget {
  final List<String> sizes;
  const SizesListView({Key? key, required this.sizes}) : super(key: key);

  @override
  State<SizesListView> createState() => _SizesListViewState();
}

class _SizesListViewState extends State<SizesListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.sizes.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 6.0,),
            child: InkWell(
              onTap: (){
                _selectedIndex = index;
                setState(() {

                });
              },
              child: Container(
                height: 5,
                width: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: _selectedIndex == index ? const Color(0xFF295391) : Colors.black12),
                ),
                child: Center(child: SubHeadingText(text: widget.sizes[index],)),
              ),
            ),
          );
        });
  }
}
