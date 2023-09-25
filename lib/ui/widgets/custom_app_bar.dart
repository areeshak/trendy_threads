import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showAppName;
  final bool showMenuIcon;
  final bool showCartIcon;
  final String text;

  const CustomAppBar(
      {Key? key,
      this.showAppName = false,
      this.showMenuIcon = true,
      this.showCartIcon = true,
      this.text = ""})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.black,
      elevation: 0,
      title: showAppName
          ? const Center(
              child: Text(
                'Trendy Threads',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Color(0xFF295391),
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          : Center(
              child: Text(
                text,
                style: const TextStyle(fontSize: 24),
              ),
            ),
      leading: showMenuIcon
          ? IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {},
            )
          : IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
            ),
      actions: showCartIcon
          ? [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              )
            ]
          : [
              IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () {},
              )
            ],
    );
  }
}
