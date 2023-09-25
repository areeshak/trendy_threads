import 'package:flutter/material.dart';

class SubHeadingText extends StatelessWidget {
  final String text;

  const SubHeadingText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 15,
        //fontWeight: FontWeight.w500,
      ),
      textAlign: TextAlign.center,
    );
  }
}
