import 'package:flutter/material.dart';

class ColorsListView extends StatefulWidget {
  final List<Color> colors;
  const ColorsListView({Key? key, required this.colors}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: widget.colors.length,
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
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                  color: _selectedIndex == index ? Colors.grey.shade300 : null,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: widget.colors[index],
                        border: Border.all(color: Color(0xFF295391))
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
