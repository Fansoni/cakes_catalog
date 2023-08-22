import 'package:flutter/material.dart';

class BuildCardCake extends StatelessWidget {
  final double height;
  final bool favorite;
  final String image;
  const BuildCardCake({
    super.key,
    required this.height,
    required this.favorite,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: (MediaQuery.of(context).size.width - 20) / 2 - 5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Align(
        alignment: const Alignment(0.9, -0.9),
        child: Icon(Icons.favorite,
            size: 30.0, color: (favorite) ? Colors.red : Colors.white),
      ),
    );
  }
}
