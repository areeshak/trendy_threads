import 'package:flutter/material.dart';

class IdentityCard extends StatefulWidget {

  final String title;
  final String imagePath;
  final Widget destinationPage;

  const IdentityCard({Key? key, required this.title, required this.imagePath, required this.destinationPage}) : super(key: key);

  @override
  State<IdentityCard> createState() => _IdentityCardState();
}

class _IdentityCardState extends State<IdentityCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => widget.destinationPage,
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.40,
        height: 130,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
          ),
          //color: Color(0xffF4C2F8).withOpacity(0.35),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 4,
              top: 45,
              child: Text(
                widget.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Positioned(
              left: 55,
              top: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.33,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        widget.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

